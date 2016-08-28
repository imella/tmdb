# Base class for parsing files
class ParserService
  def self.call(*args)
    new(*args).call
  end

  def initialize(path:, separator: '|')
    @column_separator = separator
    @files = Dir.glob("#{path}/*.data")
  end

  def call
    @files.each do |filename|
      save(filename)
    end
  end
end