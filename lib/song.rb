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
    self.find_by_name(name) || self.create_by_name(name)
  end 
  
  def self.alphabetical
    @@all.sort_by { |song_name| song_name.name }
  end 
  
  def self.new_from_filename(filename_string)
    filename_string.tr('.mp3', '')
    filename_array = filename_string.split("-")
    new_song_artist_name = filename_array[0]
    new_song_name = filename_array[1]
   
    song = self.new 
  end

end
