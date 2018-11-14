class Genre
<<<<<<< HEAD
  @@all = []
  
  attr_accessor :name

  def self.all 
    @@all
  end 

  def initialize(name)
    @name = name
    @@all << self 
  end

  def songs
    Song.all.select do |song|
      song.genre == self 
    end 
  end

  def artists
    songs.map do |song|
=======
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.genre = self
  end

  def songs
    @songs
  end

  def artists
    @songs.collect do |song|
>>>>>>> 3a26abde53cab367c3f876d2490379079a1a83e7
      song.artist
    end
  end
end