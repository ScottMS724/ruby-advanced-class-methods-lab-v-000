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
    @@all.detect { |song| song.name == name}
  end 
  
  def self.find_or_create_by_name(name)
    if @@all.detect { |song| song.name == name }
    else
    new_song = self.new 
    new_song.name = song 
    @@all << new_song 
    new_song
    
    
  end 

end
