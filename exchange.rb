require 'money'
require 'colorize'
require 'colorized_string'


# convert currency ffrom INR to Different 5 currency
class Exchange
    def initialize()
        I18n.config.available_locales = :en
        convert
    end
  
    def convert
      puts " Enter your currenty in INR value".colorize(:red)
      @inr_amount = gets.to_i
  
      puts "Choose any one option\n 1: USD \n 2: Dinar \n 3: Pound \n 4: YEN \n 5: EUR"
      target_amount = gets.to_i
  
      case target_amount
      when 1
        Money.add_rate('INR','USD',0.0122)
        amount_usd = Money.from_amount(@inr_amount, "INR").exchange_to("USD")
        puts "#{@inr_amount} INR is equal to #{amount_usd.format} USD"
      
      when 2
        Money.add_rate('INR','IQD',0.0037)
        amount_iqd = Money.from_amount(@inr_amount,'INR').exchange_to("IQD")
        puts "#{@inr_amount} INR is equal to #{amount_iqd.format} IQD"
      

      when 3
        Money.add_rate('INR','GBP',0.0098)
        amount_gbp = Money.from_amount(@inr_amount,'INR').exchange_to("GBP")
        puts "#{@inr_amount} INR is equal to #{amount_gbp.format} GBP"
     
  
       
      when 4
        Money.add_rate('INR','JPY',1.634)
        amount_jpy = Money.from_amount(@inr_amount,'INR').exchange_to("JPY")
        puts "#{@inr_amount} INR is equal to #{amount_jpy.format} JPY"
     
  
        
      when 5
        Money.add_rate('INR','EUR',0.0111)
        amount_eur = Money.from_amount(@inr_amount,'INR').exchange_to("EUR")
        puts "#{@inr_amount} INR is equal to #{amount_eur.format} EUR"
    
      else
        puts "you enter the wrong number"  
      end
  

    end
end
  
  ## driver logic
  ex = Exchange.new
  ex.convert
