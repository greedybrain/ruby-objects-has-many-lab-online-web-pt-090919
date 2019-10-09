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
    Author.exists?(author.name) ? author.name : nil
  end

end