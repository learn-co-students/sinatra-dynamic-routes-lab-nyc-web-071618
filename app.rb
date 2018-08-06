require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed = params[:name]
    "#{@reversed.reverse}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i
    "#{@squared ** 2}".to_s
  end

  get '/say/:number/:phrase' do
    @n = params[:number].to_i
    @phrases = params[:phrase]
    "#{@phrases * @n}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words1 = params[:word1]
    @words2 = params[:word2]
    @words3 = params[:word3]
    @words4 = params[:word4]
    @words5 = params[:word5]
    "#{@words1} #{@words2} #{@words3} #{@words4} #{@words5}."
  end

  get '/:operation/:number1/:number2' do
    @operations = params[:operation]
    @numbers1 = params[:number1].to_i
    @numbers2 = params[:number2].to_i
    if @operations == "add"
      "#{@numbers1 + @numbers2}"
    elsif @operations == "subtract"
      "#{@numbers2 - @numbers1}"
    elsif @operations == "multiply"
      "#{@numbers1 * @numbers2}"
    elsif @operations == "divide"
      "#{@numbers1 / @numbers2}"
    end
  end

end
