require 'pry'



class Song
  attr_accessor :name, :artist, :genre

  @@all = {}
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  @@count = 0


  def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      
      if @@genre_count[genre] 
         @@genre_count[genre] += 1
      else
         @@genre_count[genre] = 1
      end
      if @@artist_count[artist]
         @@artist_count[artist] += 1
      else
         @@artist_count[artist] = 1
      end
      
      @@artists << @artist
      @@genres << @genre
      @@all[name] = [{"singer" => artist,
                      "genre" => genre}]

   end
  def self.all
      
      @@all
  end
   def self.count
      @@count
  end
  def self.artists
      @@artists.uniq
  end
  def self.genres
      @@genres.uniq
  end
  def self.genre_count
#    @@genre_count[self.genre] = 0  
#    @@genres.each do |value|
#              @@genre_count[value] += 1
     @@genre_count
  end
  
  def self.artist_count
      @@artist_count
  #    p @@artist_count
  end

end

