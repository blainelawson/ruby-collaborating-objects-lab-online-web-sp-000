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
    @name = self.new(file_name.split(" - ")[1], file_name.split(" - ")[0], file_name.split(" - ")[2].gsub(".mp3",""))


  end
end
