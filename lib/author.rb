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
    posts << posting
  end
  
  def self.post_count
    count = 0
    @@authors.each {|author| count += author.posts.length}
    count
  end
end