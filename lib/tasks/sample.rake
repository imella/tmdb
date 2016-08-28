namespace :sample do
  desc 'Load Sample Data'
  task load: :environment do
    puts 'Parsing and loading sample data'
    ActorsParserService.call(path: "#{Rails.root}/config/sample/actor")
    MoviesParserService.call(path: "#{Rails.root}/config/sample/movie")
    MovieActorsParserService.call(path: "#{Rails.root}/config/sample")
    puts 'Finished loading sample data'
  end
end