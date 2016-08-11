require 'sinatra'

get '/' do
  def fizzbuzz(n)
    a = ""
    a << "Fizz" if n%3 == 0
    a << "Buzz" if n%5 == 0
    a << n.to_s if a.empty?
    a
  end

  input = (params['guess'].to_i)
  result = fizzbuzz(input)

  erb :index, :locals => {:result => result}

end
