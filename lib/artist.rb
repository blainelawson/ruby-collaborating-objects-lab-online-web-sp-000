require "pry"
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    # binding.pry
    @songs = []
    @@all << self
  end

  def add_song(song)
    # binding.pry
    @songs << song
    song.artist = self
    @@all << song
  end

  def save
    @all << self
end
