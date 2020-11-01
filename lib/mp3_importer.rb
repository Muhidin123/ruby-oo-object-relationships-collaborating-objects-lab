require 'pry'
class MP3Importer

    attr_accessor :path

    @@all = []

    def initialize(path)
        @path = path
        @@all << self
    end
    


    def files
        #path = "spec/fixtures/mp3s"
        Dir["#{path}/*.mp3"].map {|songs| songs.gsub("#{path}/", "")}
    end

    def import
        files.each do |all_songs| Song.new_by_filename(all_songs)
        end
    end


end

#binding.pry