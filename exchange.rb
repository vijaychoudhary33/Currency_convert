require 'money'
require 'colorize'
require 'colorized_string'


# dollar to INR
class Exchange
  def initialize(amount, target_currency)
    @amount = amount
    @target_currency = target_currency
  end

  def convert
    puts "This is blue".colorize(:red)
    money = Money.from_cents(7532, "USD")
    puts money.cents
    puts money.currency 
    # @amount * 80
  end
end

## driver logic
ex = Exchange.new(5, 'INR')
ex.convert
