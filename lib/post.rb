class Post 
  
  attr_accessor :author, :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def author=(author)
    @author = author
    author.posts << self
  end
  
  def author_name 
    self.author.name
  end

end