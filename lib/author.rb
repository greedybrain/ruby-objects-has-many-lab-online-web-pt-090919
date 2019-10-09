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
  
  def add_post(a_post)
    a_post.author = self
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
  end
  
  def self.post_count
    Post.all.length
  end

end


