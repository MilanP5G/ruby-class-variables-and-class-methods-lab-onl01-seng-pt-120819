

class Song 
  attr_accessor :artists, :genres, :count
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
 

  def initialize(name, artists, genre)
    @name = name
    @artists = artists
    @genre = genre 
    @@count += 1
    @@genres << genre
    @@artists << artists
  end 
  
  def name
    @name 
  end 
  
  def artist
    @artists
  end 
  
  def genre 
    @genre
  end 
  
  def self.count 
    @@count
  end 
  
  def self.genres
    @@genres.uniq
  end 
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    @@genres.each do | genre |
      if @@genre_count[genre]
        @@genre_count[genre] += 1
      else 
        @@genre_count[genre] = 1
      end 
    end
    return @@genre_count
  end 
  
  def self.artist_count
    @@artists.each do | artists |
      if @@artist_count[artists]
        @@artist_count[artists] += 1
      else 
        @@artist_count[artists] = 1
      end 
    end 
    return @@artist_count
  end
     
end 