require 'sinatra'
require 'uri'

set :bind, '0.0.0.0'

def page_content(title)
  File.read("pages/#{title}.txt")
rescue Errno::ENOENT
  return nil
end

def save_content(title, content)
  File.open("notes/#{title}.txt", 'w') do |file|
    file.print(content)
  end
end

get '/' do
  'Home page'
end

get('/grade') do
  erb :grade
end

get '/list' do
  erb :list
end

get('/apple') do
  'Here\'s a juicy apple!'
end

get('/page1') do
  page_content('page1')
end

get '/title/:title' do
  "The title of this page is #{params[:title]}"
end

get '/params/:param' do
  @title = params[:param]
  @content = page_content(@title)
  erb :show
end

get '/:title' do
  params[:title]
end

post '/notes/note/:title' do
  save_content(params[:title], request.body.read)
  redirect URI.escape("/#{params[:title]}")
end

post '/signatures/create' do
  "#{params['form_element']} and #{params['form_element2']}"
end
