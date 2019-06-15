#My CLI controller, responsible for business logic (stubbed out the controller)
class WordOfTheDay::CLI

    def call
        menu 
    end

    def show_WOTD
        puts "funky" #gets word of the day from scraper
    end

    def menu
        puts "CRAZY WORD OF THE DAY CLI TEXT"
        puts "Today's Word of The Day:"
        show_WOTD 
        puts "1. See the definition"
        puts "2. Show origin"
        puts "3. Show more options"
        puts "Type the number to select"
        input = gets.chomp

        case input
        
        when "1"    
            show_word #word.show_def
            go_to_menu
        when "2"    
            show_origin #word.show_origin
            go_to_menu
        when "3"
            show_more_options #self.show_more_options
        end
        
    end

    def show_more_options
        puts ""
        puts "MO' OPTIONS"
        puts "1. See Previous Dates Word-of-"
        puts "2. See Last Weeks Date"
        puts "3. Exit"

        input = gets.chomp

        case input
        
        when "1"
            puts "You selected 1"
            show_previous_date
            scraper.mang
            go_to_menu
        when "2"
            puts "You selected 2"
            show_last_weeks_date
            go_to_menu
        when "3"
            puts "exiting"
        end
       
    end

    def show_word
        @word = WordOfTheDay::Word.todays
    end

    def go_to_menu
        input = gets.chomp
        puts "Type M for main Menu"
        if (input == "M")
            self.menu
        end
    end
end