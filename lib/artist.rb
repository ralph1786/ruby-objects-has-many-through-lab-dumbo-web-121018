class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
       @name = name
       @@all << self 
    end

    def self.all
        @@all
    end

    #takes name and genre makes a new song
    def new_song(name, genre)
        new_song = Song.new(name, self, genre)
        new_song
    end

    #iterates over all the songs and matches the song's artist with current instance.
    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    #Iterates over that artist's songs and collects the genre of each song.
    def genres
        songs.map do |song|
            song.genre
        end
    end
end

 