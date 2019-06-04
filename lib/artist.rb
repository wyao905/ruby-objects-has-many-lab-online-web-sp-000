class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name
    
    @song_list = []
  end
  
  def songs
    @song_list
  end
  
  def add_song(song)
    song.artist = self
    songs << song
  end
end