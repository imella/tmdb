require 'csv'

# Reads all .data files from given directory
# and saves each actor in the database
class ActorsParserService
  def self.call(*args)
    new(*args).call
  end

  def initialize(path:)
    @column_separator = '|'
    @files = Dir.glob("#{path}/*.data")
  end

  def call
    @files.each do |filename|
      save_actor(filename)
    end
  end

  private

  def save_actor(filename)
    actor_data = read_data(filename)
    Actor.create(actor_data)
  end

  def read_data(filename)
    parsed_data = {}
    # Asuming only one row per file
    CSV.foreach(filename, col_sep: @column_separator, quote_char: '/') do |row|
      parsed_data[:slug] = row[0]
      parsed_data[:name] = row[1]
      parsed_data[:birthdate] = Time.at(row[2].to_i / 1_000)
      parsed_data[:bio] = row[3]
    end
    parsed_data
  end
end
