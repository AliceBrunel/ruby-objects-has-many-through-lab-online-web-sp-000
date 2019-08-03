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
    @songs 
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    song.artist = self
  end

end