class Song 
  
  attr_accessor :artist, :name
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def artist=(artist)
    @artist = artist
    artist.songs << self
  end
  
  def artist_name 
    artist ? artist.name : nil
  end

end