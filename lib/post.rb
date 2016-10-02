class Post
  attr_accessor :author, :title #so that it can be read and written.

  def initialize(title)
    #@name = name  #where your name is written or assigned. writer
    @title = title
  end

  def author_name
    if self.author
      self.author.name
    else
      return nil
    end
  end

end