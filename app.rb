require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    reverse = params[:name].reverse
    reverse
  end

  get '/square/:number' do
    square = params[:number].to_i * params[:number].to_i
    "#{square}"
  end

  get '/say/:number/:phrase' do
    answer = ''
     params[:number].to_i.times do
       answer += params[:phrase]
     end
    answer
  end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

get '/:operation/:number1/:number2' do
  if params[:operation] == "add"
    add = params[:number1].to_i + params[:number2].to_i
    "#{add}"
  elsif
    params[:operation] == "subtract"
      subtract = params[:number1].to_i - params[:number2].to_i
      "#{subtract}"
  elsif
    params[:operation] == "multiply"
      multiply = params[:number1].to_i * params[:number2].to_i
      "#{multiply}"
  elsif
    params[:operation] == "divide"
      divide = params[:number1].to_i / params[:number2].to_i
      "#{divide}"
    end
  end
end
