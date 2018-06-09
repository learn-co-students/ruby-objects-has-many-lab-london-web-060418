require 'pry'
require 'post'

class Author
  attr_accessor :name, :posts

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    self.add_post(new_post)
  end


  def self.post_count
    total = 0
    all_authors = @@all
    all_authors.each do |author|
      total += author.posts.length
    end
    total
  end

end
