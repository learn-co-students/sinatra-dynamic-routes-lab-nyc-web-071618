require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    # operation is actually the word
    # eval "#{params[:number2]} #{params[:opeartion]} #{params[:number2]}"

    num1 = params[:number1].to_i
    num2 = params[:number2].to_i


    case params[:operation]
    when 'add'
      (num1 + num2).to_s
    when 'subtract'
      (num2 - num1).to_s
    when 'multiply'
      (num2 * num1).to_s
    else
      (num1/num2).to_s
    end
  end


end
