class Ticket
  attr_reader :venue, :date
  attr_accessor :price
  def initialize(venue,date)
    @venue = venue
    @date = date
  end
end

# The method most_expensive is defined directly on the class object Ticket in singleton-method style
# A singleton method defined on a class object is commonly referred to as a class method
# Idea of a class method is that messages are sent to the object that's the class rather than an instance of the class
def Ticket.most_expensive(*tickets)
  tickets.max_by(&:price)
end

th = Ticket.new("Town Hall","2013-11-12")
cc = Ticket.new("Convention Center","2014-12-13")
fg = Ticket.new("Fairgrounds","2015-10-11")
th.price = 12.55
cc.price = 10.00
fg.price = 18.00


highest = Ticket.most_expensive(th,cc,fg)
puts "The highest-priced ticket is the one for #{highest.venue}."
