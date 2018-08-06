require_relative 'config/environment'

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

  # get '/say/:number/:phrase' do
  #   @number = params[:number].to_i
  #   @phrase = params[:phrase]
  #   "#{@number.times do 
  #     @phrase 
  #   end}"
  # end

  get '/say/:number/:phrase' do
    final_string = ""
    (params[:number].to_i).times do
      final_string += "#{params[:phrase]}\n"
    end
    final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = []
    params.each_value do |v|
      @words << v.to_s
    end
    "#{@words.join(' ')}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @op == "add"
      "#{@num1 + @num2}"
    elsif @op == "subtract"
      "#{@num1 - @num2}"
    elsif @op == "divide"
      "#{@num1 / @num2}"
    elsif @op == "multiply"
      "#{@num1 * @num2}"
    end
  end
end