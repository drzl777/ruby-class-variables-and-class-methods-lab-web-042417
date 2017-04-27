class Song

  @@count = 0

  @@artists = []

  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  attr_reader :name, :artist, :genre

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
    genre_count = {}
    @@genres.each {|genre| genre_count.include?(genre) ? genre_count[genre] += 1 : genre_count[genre] = 1 }
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each {|artist| artist_count.include?(artist) ? artist_count[artist] += 1 : artist_count[artist] = 1 }
    artist_count
  end


end
