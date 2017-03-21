#! /usr/bin/env ruby
require 'sinatra'
require 'pry'

get '/' do
  @tasks = tasks
  haml :index
end

def sqlite_tasks
  db = SQLite3::Database.new 'db/test.db'
  db.execute('select * from activity_duration')
end

def postgres_tasks
  db = PG.connect
  db.exec('select * from activity_duration').values.map { |a, b| [a, b.to_i] }
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
