class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(song)
    # binding.pry
    @name = song
    @@all << self
  end

  def new_by_filename
  end
end
