# README

## Tiny Movie Database - TMDB

### Stack

* Ruby 2.3.0
* Ruby on Rails 5.0.0.1
* SQLite 3

### How to

To run the application you must run the following commands

#### Install dependencies using bundler

```
bundle install
```

#### Create and migrate the database

```
bundle exec rails db:create
bundle exec rails db:migrate
```

#### Load Sample Data

```
bundle exec rails sample:load
```

#### Run the server

```
bundle exec rails s
```

And finally open your browser and go to `http://localhost:3000`

#### Testing

To run the tests of the application run

```
bundle exec rake test
```