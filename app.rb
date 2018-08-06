require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    "#{params[:name].to_s.reverse}"
  end

  get "/square/:number" do
    "#{params[:number].to_i ** 2}"
  end

  get "/say/:number/:phrase" do
    to_return = ""
    params[:number].to_i.times do
      to_return = to_return + "#{params[:phrase].to_s}"
    end

    to_return
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1].to_s} #{params[:word2].to_s} #{params[:word3].to_s} #{params[:word4].to_s} #{params[:word5].to_s}."
  end

  get "/:operation/:number1/:number2" do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
  end

end
