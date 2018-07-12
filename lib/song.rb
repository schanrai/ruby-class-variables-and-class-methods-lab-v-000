require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre
  #attr_accessor :count

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    @@artists << artist
    @@genres << genre
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

  #You will need to iterate over the `@@genres` array and populate a hash with the key/value pairs.
  #You will need to check to see if the hash already contains a key of a particular genre.
  #If so, increment the value of that key by one, otherwise, create a new key/value pair.

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      elsif genre_count[genre] == 0
        genre_count[genre] = 1
      end
    genre_count
    end
  end


end
