class Author
  attr_accessor :name
  
  @@authors = []
  
  def initialize(name)
    @name = name
    @post_list = []
    @@authors << self
  end
  
  def posts
    @post_list
  end
  
  def add_post(posting)
    posting.artist = self
    posts << posting
  end
  
  def add_post_by_name(post_name)
    posting = Post.new(post_name)
    posting.artist = self
    songs << song
  end
  
  def self.song_count
    count = 0
    @@artists.each {|artist| count += artist.songs.length}
    count
  end
end