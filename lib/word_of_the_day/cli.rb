#interface
class WordOfTheDay::CLI

    def call
        menu 
    end

    def menu
        puts ""
        puts ""
        puts "Today's Word of The Day:".green
        puts ""
        WordOfTheDay::Word.test(1)
        
        puts "1. See the definition".green
        puts "2. Show origin".green
        puts "3. Show pronunciation".green
        puts "4. Show last 7 days list of words".green
        puts "5. Yesterday's word".green
        puts "Type 'exit' at anytime to end program.".magenta
        puts ""
        input = gets.chomp
        if ((!input == 1) || (!input == 'menu'))
            puts "nerp"
            go_to_menu
        end
        case input
        
        when "1"    
            WordOfTheDay::Word.show_definition
            go_to_menu
        when "2"    
            WordOfTheDay::Word.show_origin
            go_to_menu
        when "3"
            WordOfTheDay::Word.show_pronunciation
            go_to_menu
        when "4"
            WordOfTheDay::Word.show_last_seven
            go_to_menu
        when "exit"
            puts "" #look into formatting
            puts "Good-bye! Program is exiting...".blue #put this in yellow
            exit
        else
            puts ""
            puts ""
            puts "This option does not exist. Please choose another option below.".red #put this in red
            puts "---------------------------------------------------------------".red 
            menu
        end
        
    end

    def go_to_menu
        puts "Type 'menu' for menu.".blue
        input = gets.chomp
        if (input == "menu")
            self.menu
        end
    end

end