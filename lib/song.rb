class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create 
    song = self.new
    song.save
    song 
  end 
  
  def self.new_by_name(song)
    new_song = self.new
    new_song.name = song
    new_song
  end 

end
