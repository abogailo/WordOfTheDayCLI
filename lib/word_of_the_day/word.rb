

class WordOfTheDay::Word

attr_accessor :wordy, :origin, :definition, :pronunciation

     @@all = []

     def initialize(wordy,origin,definition,pronunciation)
          @wordy = wordy
          @origin = origin
          @definition = definition
          @pronunciation = pronunciation
          @@all << self
     end

     def self.all
          @@all.empty? ? WordOfTheDay::Scraper.scrape_wotd : nil
          @@all
     end
     
    def self.word_of_the_day(choice)
      choice = choice.to_i
      puts "   #{self.all[choice].wordy}".cyan
      puts ""
    end

    def self.show_definition(choice)
      choice = choice.to_i
      puts "#{self.all[choice].definition}".cyan
    end

    def self.show_pronunciation(choice)
      choice = choice.to_i
      puts "#{self.all[choice].pronunciation}".cyan
    end

    def self.show_origin(choice)
      choice = choice.to_i
      puts "#{self.all[choice].origin}".cyan
    end

    def self.show_yesterdays(choice)
          choice = choice.to_i
          puts ""
          puts ""
          puts "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "----".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green
          puts ""
          puts "#{self.all[choice].wordy}".red
          puts "#{self.all[choice].pronunciation}".yellow
          puts "#{self.all[choice].definition}"
          puts "#{self.all[choice].origin}".magenta
          puts "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "----".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green
     #will return seven of this weeks words
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