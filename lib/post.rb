class Post


  @@all = []
  attr_accessor :title, :author

  def initialize(title)
    @title = title

    @@all << self
  end

  def author_name
    return @author ? @author.name : nil
  end


  def self.all
    return @@all
  end


end
