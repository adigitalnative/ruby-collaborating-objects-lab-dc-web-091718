class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    songs << song
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find(name)
    all.find {|artist| artist.name == name }
  end

  def self.find_or_create_by_name(name)
    self.find(name) || Artist.new(name)
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
end