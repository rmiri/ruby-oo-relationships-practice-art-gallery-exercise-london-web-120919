require_relative '../config/environment.rb'

bob = Artist.new("Bob Ross", 20)
klimt = Artist.new("Gustav Klimt", 15)

met = Gallery.new("The MET","NY")

tree = Painting.new("Happy trees",100,bob,met)
klimt.create_painting("Girl",300,"Louvre")

binding.pry

puts "Bob Ross rules."
