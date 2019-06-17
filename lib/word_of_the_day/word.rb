#show_word
#show_previous
#show_last week
#show def
#show origin

class WordOfTheDay::Word

attr_accessor :wotd_word, :wotd_url, :wotd_origin, :wotd_definition, :wotd_pronunciation
     #needs both reader and writer
    def self.todays
        @this = WordOfTheDay::Scraper.scrape_wotd
        @this.each do |item|
                latest = item[:latest]
                if latest.include? "true" #if data is latest post = true will pull todays date
                     #puts item.values will print all values in array of hashes
                     @wotd_word = item[:word]
                end
             end
        puts @wotd_word
    end

    def self.show_last_seven
        word_hash = []
        @this = WordOfTheDay::Scraper.scrape_wotd
        @this.each do |item|
         
            puts item[:word] #add each with index thing. Avis video 42:03 and colors to format this better
            puts item[:pronunciation]
            puts item[:definition]
            puts item[:origin]
            puts ""
              
           end
        #will return seven of this weeks words
    end

    def self.show_definition
        #show the words definition
        @this = WordOfTheDay::Scraper.scrape_wotd
        @this.each do |item|
                latest = item[:latest]
                if latest.include? "true" #if data is latest post = true will pull todays date
                     #puts item.values will print all values in array of hashes
                     @wotd_definition = item[:definition]
                end
             end
        puts @wotd_definition
        puts ""
    end

    def self.show_pronunciation
        #show the words pronunciation
        @this = WordOfTheDay::Scraper.scrape_wotd
        @this.each do |item|
                latest = item[:latest]
                if latest.include? "true" #if data is latest post = true will pull todays date
                     #puts item.values will print all values in array of hashes
                     @wotd_pronunciation = item[:pronunciation]
                end
             end
        puts @wotd_pronunciation
        puts ""
    end

    def self.show_origin
        #return the origin
        @this = WordOfTheDay::Scraper.scrape_wotd
        @this.each do |item|
                latest = item[:latest]
                if latest.include? "true" #if data is latest post = true will pull todays date
                     #puts item.values will print all values in array of hashes
                     @wotd_origin = item[:origin]
                end
             end
        puts @wotd_origin
        puts ""
    end
end