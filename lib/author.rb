require 'pry'
class Author 
  
  @@all = []
  
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end
  
  def posts 
    @posts
  end
  
  def add_post(post)
    self.posts << post
    post.author = self
    # binding.pry
  end
  
  def add_post_by_title(post)
    new_post = Post.new(post)
    new_post.author = self
  end
  
  def self.post_count
    Post.all.length
  end

end


