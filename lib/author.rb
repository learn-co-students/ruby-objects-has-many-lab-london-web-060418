
class Author

  attr_accessor :name

  # @@All_Artists = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(new_post)
    @posts << new_post
    new_post.author = self
    # Song.all << new_song
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    # binding.pry
    add_post(new_post)
  end

  def self.post_count
    Post.all.count
  end

  # binding.pry
  # true



end
