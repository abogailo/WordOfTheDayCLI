

class WordOfTheDay::Word

attr_accessor :wordy, :url, :origin, :definition, :pronunciation, :latest

     @@all = []

     def initialize(wordy,url,origin,definition,pronunciation,latest)
          @wordy = wordy
          @url = url
          @origin = origin
          @definition = definition
          @pronunciation = pronunciation
          @latest = latest
          @@all << self
     end

     def self.all
          @@all.empty? ? WordOfTheDay::Scraper.scrape_wotd : nil
          @@all
     end
     

    

    def self.word_of_the_day(choice)
      choice = choice.to_i
      puts "#{self.all[choice].wordy}".red
    end

    def self.show_definition(choice)
      choice = choice.to_i
      puts "#{self.all[choice].definition}".red
    end

    def self.show_pronunciation(choice)
      choice = choice.to_i
      puts "#{self.all[choice].pronunciation}".red
    end

    def self.show_origin(choice)
      choice = choice.to_i
      puts "#{self.all[choice].origin}".red
    end

    def self.show_last_seven
       
     @@all.each_with_index do |item, index|
      
         puts "#{index + 1}. #{item.wordy}".red #add each with index thing. Avis video 42:03 and colors to format this better
         puts "#{item.pronunciation}".yellow
         puts "#{item.definition}"
         puts "#{item.origin}".magenta
         puts "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "----".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green
           
        end
     #will return seven of this weeks words
 end
end