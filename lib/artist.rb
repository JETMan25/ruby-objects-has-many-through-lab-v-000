class Artist
  attr_accessor :name
  @@all = []
  
  def self.all
    @@all
  end 
  
  
  def initialize(name)
    @name = name
<<<<<<< HEAD
    @@all << self 
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
   end

  def songs
    Song.all.select do |song|
      song.artist == self 
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end
=======
    @songs << self 
  end

  def new_song(name, genre)
    Song.new(name, genre,)
    @songs
  end

#   def songs
#     @songs
#   end

#   def genres
#     @songs.collect do |song|
#       song.genre
#     end
#   end
>>>>>>> 3a26abde53cab367c3f876d2490379079a1a83e7
 end