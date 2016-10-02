class Artist

  attr_accessor :name
  # attr_reader :songs why no songs reader?

 @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    
  end

  def songs
    @songs
  end

  def add_song(song)
    self.songs << song
    # @songs << song #why is this self.songs << song ?
    #                 #isn't self.songs the same with @songs?
    

    song.artist = self
    @@song_count+=1
  end

  def add_song_by_name(song_name)
    
    new_song = Song.new(song_name)
    self.songs << new_song
    
    new_song.artist = self
    @@song_count+=1

    # self.songs.last.name = song_string
  end

  def self.song_count
      @@song_count 
  end


  
end