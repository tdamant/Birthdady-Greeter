require 'sinatra/base'
require 'date'
require './lib/person'
require './lib/birthday_printer'

class BirthdayGreeter < Sinatra::Base
  enable :sessions
  disable :show_exceptions

  get '/' do
    erb :hello
  end

  post '/' do
    month = params[:month]
    day = params[:day]
    print "FIND ME #{Date.valid_date?(Date.today.year, month.to_i, day.to_i)}"
    if Date.valid_date?(Date.today.year, month.to_i, day.to_i)
      $person = Person.new(params[:name], day.to_i, month.to_i)
      redirect '/greet'
    else
      redirect '/error'
    end
  end

  get '/error' do
    "Oops that's not a valid date! - please try again"
  end


  get '/greet' do
    @name = $person.name
    @greeting = $person.birthday_greeting
    erb :greet
  end

  run! if app_file == $0
end
