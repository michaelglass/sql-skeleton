#! /usr/bin/env ruby
require 'sinatra'
require 'pry'

get '/' do
  @tasks = tasks('select * from activity_duration')
  haml :index
end

def sqlite_tasks(query)
  db = SQLite3::Database.new 'db/test.db'
  db.execute(query)
end

def postgres_tasks(query)
  db = PG.connect
  db.exec(query).values.map { |a, b| [a, b.to_i] }
end

if ARGV.first == 'postgres'
  alias tasks postgres_tasks
  require 'pg'
  puts 'using postgres'
else
  alias tasks sqlite_tasks
  require 'sqlite3'
  puts 'using sqlite'
end
