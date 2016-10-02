class Song
  attr_accessor :artist, :name #so that it can be read and written.

  def initialize(name)
    @name = name #where your name is written or assigned. writer
  end

  def artist_name
    if self.artist
      self.artist.name 
    else
      return nil
    end
  end

end