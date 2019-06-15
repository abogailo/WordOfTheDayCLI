#show_word
#show_previous
#show_last week
#show def
#show origin

class WordOfTheDay::Word

    attr_accessor :name, :definition, :origin

    def self.todays
        #should return todays word
        puts "shh"
        @bangladesh = WordOfTheDay::Scraper.mang
    end
end