class Post 
  
  attr_accessor :author

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def author=(author)
    @author = author
    author.posts << self
  end

end