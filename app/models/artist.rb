class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|paintings| paintings.artist == self}
  end

  def galleries
    paintings.map {|paintings| paintings.gallery}
  end
  
  def cities
    galleries.map {|paintings| paintings.city}
  end

  def self.total_experience 
    # @@all.map {|artist| artist.years_experience }.reduce(:+)
    @@all.inject {|initial,artists| initial + artists.years_experience}
  end

  def self.most_prolific
    @@all.max_by {|artists| artists.paintings.count.to_f / artists.years_experience}
  end

  def create_painting(name,price,gallery)
    Painting.new(name,price,self,gallery)
  end

end
