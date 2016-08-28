class MovieActorsParserService < ParserService

  private

  def save(filename)
    data = read_data(filename)
    data.each do |item|
      item[:actor].movies << item[:movies]
    end
  end

  def read_data(filename)
    data = []
    # Each rows represents an actor and its movies
    CSV.foreach(filename, col_sep: @column_separator) do |row|
      actor = Actor.find_by(slug: row[0])
      movies = Movie.where(slug: row[1..-1])
      data << { actor: actor, movies: movies }
    end
    data
  end
end