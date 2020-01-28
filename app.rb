require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number]
    "#{@number.to_i*@number.to_i}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
   
    "#{@phrase*@number}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word_one = params[:word1]
    @word_two = params[:word2]
    @word_three = params[:word3]
    @word_four = params[:word4]
    @word_five = params[:word5]

    "#{@word_one} #{@word_two} #{@word_three} #{@word_four} #{@word_five}."
  end

  get '/:operation/:number1/:number2' do
    # @operator = params[:operation]
    @num_one = params[:number1].to_i
    @num_two = params[:number2].to_i

    case params[:operation]
    when "add"
      "#{@num_one + @num_two}"
    when "subtract"
      "#{@num_one - @num_two}"
    when "multiply"
      "#{@num_one * @num_two}"
    when "divide"
      "#{@num_one / @num_two}"
    end
  end

end