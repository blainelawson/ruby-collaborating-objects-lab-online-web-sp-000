require "pry"
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    # binding.pry
    @songs = []
  end

  def add_song(song)
    # binding.pry
    @songs << song
    song.artist = self
    @@all << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if !@@all.find {|i| i.artist.name == name}
      @name = name
    else
      @name
    end
  end
end
