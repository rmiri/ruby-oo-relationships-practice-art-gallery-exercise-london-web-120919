class Painting

  attr_reader :title, :artist
  attr_accessor :price, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    @@all.map {|paintings| paintings.price}.reduce(:+)
    # @@all.inject {|p1,p2| p1.price + p2.price}
  end

end
