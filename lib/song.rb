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
  
  def self.create_by_name(song) 
    new_song = self.new 
    new_song.name = song 
    @@all << new_song 
    new_song
  end 
  
  def self.find_by_name(name)
    self.all.detect { |song| song.name == name}
    song.name
  end 

end
