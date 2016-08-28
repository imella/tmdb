require 'csv'

# Reads all .data files from given directory
# and saves each actor in the database
class ActorsParserService < ParserService

  private

  def save(filename)
    Actor.create(read_data(filename))
  end

  def read_data(filename)
    parsed_data = {}
    # Asuming only one row per file
    CSV.foreach(filename, col_sep: @column_separator, quote_char: '/') do |row|
      parsed_data[:slug] = row[0]
      parsed_data[:name] = row[1]
      parsed_data[:birthdate] = Time.at(row[2].to_i / 1_000)
      parsed_data[:bio] = row[3]
      parsed_data[:image_path] = "actors/#{row[0]}.jpg"
    end
    parsed_data
  end
end
