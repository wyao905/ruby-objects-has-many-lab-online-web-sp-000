class Artist
  attr_accessor :name
  
  @@artists = []
  
  def initialize(name)
    @name = name
    @song_list = []
    @@artists << self
  end
  
  def songs
    @song_list
  end
  
  def add_song(song)
    song.artist = self
    songs << song
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    songs << song
  end
  
  def self.song_count
    @@artists.each {|artist| artist.songs.length}
  end
end