class Genre
  attr_accessor :name, :songs, :artists
  @@genres = []

  def initialize
    @songs = []
    @artists = []
    @@genres << self
  end

  def self.reset_genres
    @@genres = []
  end

  def self.all
    @@genres
  end

  def self.count
    @@genres.size
  end

end