class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(song)
    # binding.pry
    @name = song
    @@all << self
  end

  def self.new_by_filename(file_name)
    binding.pry
  end
end
