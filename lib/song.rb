class Song
    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << @genre
        @@artists << @artist
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
        new_hash = {}
        @@genres.map do |name|!
         new_hash[name]? new_hash[name] = 1 : new_hash[name] += 1
        end
        new_hash
    end
    def self.artist_count
        artist_hash = {}
        @@artists.map do |act|!
            artist_hash[act]? artist_hash[act] = 1 : artist_hash[act] += 1
        end
        artist_hash
    end
end