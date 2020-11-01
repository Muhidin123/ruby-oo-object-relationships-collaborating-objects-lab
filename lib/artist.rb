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

    def songs
        Song.all.select {|songs| songs.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def self.find_or_create_by_name(name)
        self.find(name) ? self.find(name) : Artist.new(name)
    end

    def self.find(name)
        self.all.find {|artists| artists.name == name}
    end

    def print_songs
        songs.each do |all_songs| puts all_songs.name
        end
    end

end
