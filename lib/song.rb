class Song
  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(song)
    # binding.pry
    @name = song
    @@all << self
  end

  def self.new_by_filename(file_name)
    # binding.pry
    song = self.new(file_name.split(" - ")[1])
  end
end
