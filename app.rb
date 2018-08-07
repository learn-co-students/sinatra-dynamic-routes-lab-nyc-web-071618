require_relative 'config/environment'
require "pry"

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    if @operation == "add"
      @operation = '+'
    elsif @operation == "subtract"
      @operation = '-'
    elsif @operation == "multiply"
      @operation = '*'
    elsif @operation == "divide"
      @operation = '/'
    end                
    @number1 = params[:number1]
    @number2 = params[:number2]
    @output = eval("#{@number1} #{@operation} #{@number2}")
    "#{@output}"
  end

end