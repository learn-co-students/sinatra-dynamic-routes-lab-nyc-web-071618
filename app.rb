require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @square_num = @num * @num
    "#{@square_num}"
  end

  get '/say/:number/:phrase' do
    @phr = params[:phrase]
    phrase = ""
    (params[:number].to_i).times do
    phrase = phrase + "#{@phr}\n"
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    new_string = ""
    5.times do
      new_string += "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end
    new_string
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @op = params[:operation]
    @total = ""
    if @op == 'add'
      @total = "#{@num1 + @num2}"
    elsif @op == 'subtract'
      @total = "#{@num1 - @num2}"
    elsif @op == 'multiply'
      @total = "#{@num1 * @num2}"
    elsif @op == 'divide'
      @total = "#{@num1/@num2}"
    else
      nil
    end

  end

end
