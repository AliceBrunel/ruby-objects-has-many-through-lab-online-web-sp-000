class Genre 
  
  @@all = []
  
  attr_accessor :name, :songs, :artists
  
  def initialize(name)
    @name = name 
    @@all << self
  end

  def self.all  
    @@all
  end

  def songs 
    Song.all.select {|song| song.genre == self}
  end
  
   def artist 
    Song.all.select {|song| song.artist == self}
  end
  
end