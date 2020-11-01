class Song

    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name    
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(file)
        file_splited = file.split(" - ")
        artist_name = file_splited[0]
        song_name = file_splited[1]
        $new_song = self.new(song_name)
        $new_song.artist = Artist.new(artist_name)
        $new_song
    end
    
    def artist_name=(name)
    end

end