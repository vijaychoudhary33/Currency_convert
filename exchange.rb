require 'money'
require 'colorize'
require 'httpparty'
# require './xe'
require_relative 'xe'

# convert currency ffrom INR to Different 5 currency
 class Exchange
  # include module 
  include Xe
end
currenc_code = {
  "Indian Rupee" => 'INR',
  "United States Dollar" => "USD",
  "Euro" => "EUR",
  "Japanese Yen" => "JPY",
  "British Pound" => "GBP"
}
# take amount from user 
puts " Enter the amount you want to convert".colorize(:light_green)
# store user inpute in amount
begin
  amount=Float(gets)
rescue ArgumentError
  puts "Enter the correct amount in number".colorize(:green)
  retry
end

# show all currency code 
puts "Enter the currency CODE  from bellow option ".colorize(:blue)
currenc_code.each do |name, value|
  puts "#{name} => #{value}"
end
begin
# take currency code from user which enter the amount and store in current_curr
current_curr = gets.chomp.upcase
    raise "you enteres wrong currency code" unless currenc_code.values.include?(current_curr)
rescue 
  puts " Error,Please Enter the correct code".colorize (:red)  
  retry
end

# take input from user, user want convert in which currrency of cuntry
puts "Enter the currency which you want to convert in other Currency from following \n Indian -> INR \n USA -> USD \n Euro -> EUR \n Japanes yen -> JPY\n British pound -> GBD".colorize(:yellow)
# store user input currency code in convert_curr and upcase 
begin
convert_curr = gets.chomp.upcase
  raise "you enteres wrong currency code" unless currenc_code.values.include?(convert_curr)
rescue 
  puts " Error,Please Enter the correct code".colorize (:yellow)  
  retry
end  
ex = Exchange.new
ex.currency_convert(amount,current_curr,convert_curr)

