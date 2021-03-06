class Artist
  attr_accessor :name

  @@all_songs_all_artists = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    @@all_songs_all_artists << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@all_songs_all_artists << song
    song.artist = self
  end

  def self.song_count
    @@song_count = @@all_songs_all_artists.length
    @@song_count
  end
end
