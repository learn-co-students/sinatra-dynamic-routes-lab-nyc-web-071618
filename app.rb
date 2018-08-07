require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @reversename = @name.reverse
    "#{@reversename}"
  end

  get '/square/:number' do
    @number = params[:number]
    @int = @number.to_i
    @square = @int * @int
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]

    @string = ""
    @int = @number.to_i
    @int.times do
      @string = @string + " " + @phrase
    end

    return @string
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
    @number1 = params[:number1]
    @number2 = params[:number2]

    if @operation == 'add'
      @sum = @number1.to_i + @number2.to_i
      "#{@sum}"
    elsif @operation == 'subtract'
      @subtraction = @number1.to_i - @number2.to_i
      "#{@subtraction}"
    elsif @operation == 'multiply'
      @product = @number1.to_i * @number2.to_i
      "#{@product}"
    else
      @quotient = @number1.to_i / @number2.to_i
      "#{@quotient}"
    end
  end

end
