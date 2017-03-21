#! /usr/bin/env ruby
require 'sinatra'
require 'sqlite3'

get '/' do
  db = SQLite3::Database.new 'db/test.db'
  @tasks = db.execute('select * from activity_duration')
  haml :index
end
