require 'csv'

# Reads all .data files from given directory
# and saves each movie in the database
class MoviesParserService < ParserService

  private

  def save(filename)
    Movie.create(read_data(filename))
  end

  def read_data(filename)
    parsed_data = {}
    # Asuming only one row per file
    CSV.foreach(filename, col_sep: @column_separator) do |row|
      parsed_data[:slug] = row[0]
      parsed_data[:name] = row[1]
      parsed_data[:year] = row[2]
      parsed_data[:description] = row[3]
      parsed_data[:image_path] = "movies/#{row[0]}.jpg"
    end
    parsed_data
  end
end