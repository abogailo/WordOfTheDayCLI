#show_word
#show_previous
#show_last week
#show def
#show origin

class WordOfTheDay::Word

    attr_accessor :word, :definition, :origin, :pronunciation, :url, :latest, :previous_url #needs both reader and writer

    def self.todays
        WordOfTheDay::Scraper.scrape_wotd
    end

    def self.show_previous
        #will return previous weeks words. I will return all 7 of last weeks.
    end

    def self.show_definition
        #show the words definition
    end

    def self.show_pronunciation
        #show the words pronunciation
    end

    def self.show_origin
        #return the origin
    end

end