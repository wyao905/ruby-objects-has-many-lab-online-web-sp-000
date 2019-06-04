class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name
    
    @song_list = []
  end
  
  def songs
    @song_list
  end
end