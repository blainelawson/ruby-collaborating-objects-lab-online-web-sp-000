class Song
  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(song, artist="",genre="")
    # binding.pry
    @name = song
    @genre = genre
    @artist = artist
    @@all << self
  end

  def self.new_by_filename(file_name)
    binding.pry
    

  end
end
