require 'sinatra/base'
require 'date'
require './lib/person'
require './lib/birthday_printer'

class BirthdayGreeter < Sinatra::Base
  enable :sessions
  # disable :show_exceptions

  get '/' do
    erb :hello
  end

  post '/' do
    $person = Person.new(params[:name], params[:day].to_i, params[:month].to_i)
    redirect '/greet'
  end

  get '/greet' do
    @name = $person.name
    @days_until_birthday = $person.days_until_birthday
    erb :greet
  end

  run! if app_file == $0
end
