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
  def initialize(venue,date)
    @venue = venue
    @date = date
  end
  def price=(amount)
    @price = amount
  end
  def price
    @price
  end
end

ticket = Ticket.new("Town Hall", "2013-11-12")
ticket.price=(63.00)
puts "The ticket costs $#{"%.2f" % ticket.price}."
ticket.price=(72.50)
puts "Whoops -- it just went up. It now costs $#{"%.2f" % ticket.price}."

