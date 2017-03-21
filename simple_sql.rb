#! /usr/bin/env ruby
require 'sinatra'

get '/' do
  @tasks =
    [
      ['Work',     0],
      ['Eat',      100],
      ['Commute',  100],
      ['Watch TV', 100],
      ['Sleep',    0]
    ]
  haml :index
end
