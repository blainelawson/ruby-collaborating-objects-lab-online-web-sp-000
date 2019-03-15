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
    # binding.pry
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if !self.all.find {|artist| artist.name == name}
      @name = self.new(name)
      @@all << self
      @name
    end
  end

  def self.songs
    @songs
  end
  
  def print_songs
    @songs.each {|song| puts song.name}
  end
end
