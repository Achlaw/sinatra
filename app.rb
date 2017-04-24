require 'sinatra'

get '/' do
  "hello!"
end

get '/secret' do
  "secret hello!"
end

get '/page1' do
  "page 1 again plus again"
end

get '/page2' do
  "page 2"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

# post '/named-cat' do
get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
#
# get '/form' do
#   erb(:form)
# end
