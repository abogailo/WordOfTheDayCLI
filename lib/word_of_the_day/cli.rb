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

        input = gets.chomp
        case input
        
        when "1"    
            show_def
        
        when "2"    
            show_def

        when "3"
            show_more_options

        end
      #  if(input == no) 
       #     show_more_options 
        
    end

    def show_more_options
        puts ""
        puts "MO' OPTIONS"
        puts "1. See Previous Date"
        puts "2. See Last Weeks Date"
        puts "3. Back to Main Menu"
        puts "4. Exit"

        input = gets.chomp

        case input
        
        when "1"
            puts "You selected 1"
            puts "Type M for Menu"
            go_to_menu
        when "2"
            puts "You selected 2"
        when "3"
            puts "You selected 3"
        when "4"
            puts "exiting"
        end
       
    end

    def show_def
        puts "when you puts"
    end

    def go_to_menu
        input = gets.chomp
        if (input == "M")
            self.menu
        end
    end
end