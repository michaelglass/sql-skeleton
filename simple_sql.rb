require 'sinatra'
require 'json'

get '/' do
  @tasks =
    [
      ['Work',     2],
      ['Eat',      2],
      ['Commute',  2],
      ['Watch TV', 11],
      ['Sleep',    12]
    ]
  haml :index
end
