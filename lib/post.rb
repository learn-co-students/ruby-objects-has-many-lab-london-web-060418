class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if self.author || nil
      self.author.name
    end
  end

#must have so that I ca call Post.all in Author Class
  def self.all
    @@all
  end

end
