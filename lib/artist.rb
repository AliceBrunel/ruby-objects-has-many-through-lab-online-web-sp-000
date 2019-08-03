class Artist 
  
  @@all = []
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def songs 
    Song.all.
  end

  def new_song(name, genre)
    self.songs << Song.new(name, self, genre)
    
  end

end