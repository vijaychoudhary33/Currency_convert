require 'money'
require 'colorize'
require './xe'
require_relative 'xe'

# convert currency ffrom INR to Different 5 currency
 class Exchange
  # include module 
  include Xe
end
# take amount from user 
puts " Enter the amount".colorize(:red)
# store user inpute in amount
amount=gets.to_i
# show all currency code 
puts "Enter the amount currency CODE  from following Currency Code \n Indian -> INR \n USA -> USD  \n Euro -> EUR  \n Japanes yen -> JPY \n British poundr -> GBD".colorize(:blue)
# take currency code from user which enter the amount and store in current_curr
current_curr = gets.chomp.upcase
# take input from user, user want convert in which currrency of cuntry
puts "Enter the currency which you want to convert in other Currency from following \n Indian -> INR \n USA -> USD \n Euro -> EUR \n Japanes yen -> JPY\n British pound -> GBD".colorize(:yellow)
# store user input currency code in convert_curr and upcase 
convert_curr = gets.chomp.upcase
ex = Exchange.new
ex.currency_convert(amount,current_curr,convert_curr)

