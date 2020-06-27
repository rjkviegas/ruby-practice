=begin
class Ticket
  def initialize(venue,date)
    @venue = venue
    @date = date
  end
  def venue
    @venue
  end
  def date
    @date
  end
end

th = Ticket.new("Town Hall", "2013-11-12")
cc = Ticket.new("Convention Center", "2014-12-13")
puts "We've created two tickets."
puts "The first is for a #{th.venue} event on #{th.date}."
puts "The second is for an event on #{cc.date} at #{cc.venue}."
=end

class Ticket
  def initialize(venue)
    @venue = venue
  end
  def venue
    @venue
  end
  def date=(date)
    year, month, day = date.split('-')
    if year.to_i < 100
      puts "Please submit the date in the format 'yyyy-mm-dd'."
    else
      @date = date
    end  
  end
  def date
    @date
  end
  def price=(amount)
    if (amount * 100).to_i == amount * 100
      @price = amount
    else
      puts "The price seems to be malformed."
    end
  end
  def discount(percent)
    @price = @price * (100 - percent) / 100.0
  end
  def price
    @price
  end
end

=begin
ticket = Ticket.new("Town Hall", "2013-11-12")
ticket.price=(63.00)
# syntactic sugar in Ruby allows for abpve line to be:
# ticket.price = 63.00
puts "The ticket costs $#{"%.2f" % ticket.price}."
ticket.price=(72.50)
# ticket.price = 72.50
puts "Whoops -- it just went up. It now costs $#{"%.2f" % ticket.price}."
=end

=begin
th = Ticket.new("Town Hall","2013-11-12")
th.price = 100
# th.discount = 15
puts "The ticket for #{th.venue} has been discounted by 15% to $#{"%.2f" % th.discount(15)}."
=end


