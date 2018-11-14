class Song
<<<<<<< HEAD
  @@all = []
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@all << self
  end
  
  def self.all 
    @@all 
  end

=======
  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end
>>>>>>> 3a26abde53cab367c3f876d2490379079a1a83e7
end