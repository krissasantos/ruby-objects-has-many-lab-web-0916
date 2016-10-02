class Author

  attr_accessor :title, :name
  # attr_reader :songs why no songs reader?

 @@post_count = 0

  def initialize(name)
    @name = name
    # @title = title
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    # @songs << song #why is this self.songs << song ?
    #                 #isn't self.songs the same with @songs?
    post.author = self
    @@post_count+=1
  end


  def add_post_by_title(title_name)
    
    
    new_post = Post.new(title_name)
    new_post.author = self
    @posts << new_post
    @@post_count+=1

    # self.songs.last.name = song_string
  end

  def self.post_count
      @@post_count 
  end



end