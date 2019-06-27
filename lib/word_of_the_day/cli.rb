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
        
        WordOfTheDay::Word.word_of_the_day(0)
        
        puts "1. See the definition".green
        puts "2. Show origin".green
        puts "3. Show pronunciation".green
        puts "4. Show yesterdays".green
        puts "5. Show last 7 days list of words".green
        puts "Type 'exit' at anytime to end program.".magenta
        puts ""
        input = gets.chomp
        
        case input
        
        when "1"    
            WordOfTheDay::Word.show_definition(0)
            side_menu
        when "2"    
            WordOfTheDay::Word.show_origin(0)
            side_menu
        when "3"
            WordOfTheDay::Word.show_pronunciation(0)
            side_menu
        when "4"
            WordOfTheDay::Word.show_yesterdays(1)
            go_to_menu
        when "5"
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

    def side_menu
        puts "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "----".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green
        puts ""
        puts "1. See the definition".green + "  2. Show origin".yellow + "  3. Show pronunciation".green + "  4. Show all".green
        puts ""
        puts "Type 'menu' for main menu.".blue + " Type 'exit' to exit".red
        

        input = gets.chomp
        
        case input
        
        when "1"    
            WordOfTheDay::Word.show_definition(0)
            side_menu
        when "2"    
            WordOfTheDay::Word.show_origin(0)
            side_menu
        when "3"
            WordOfTheDay::Word.show_pronunciation(0)
            side_menu
        when "4"
            WordOfTheDay::Word.show_yesterdays(0)
            go_to_menu
        when "menu"
            self.menu
        when "exit"
            exit
        else
            puts ""
            puts "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "----".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green
            puts ""
            puts ""
            puts "This option does not exist. Please choose another option below.".red #put this in red
            puts "---------------------------------------------------------------".red 
            side_menu
        end
    end

    def go_to_menu
        puts ""
        puts ""
        puts ""
        puts "Type 'menu' for main menu.".blue + " Type 'exit' to exit".red
        input = gets.chomp
        if (input == "menu")
            self.menu
        elsif (input == "exit")
            exit
        else 
            puts ""
            puts ""
            puts "This option does not exist. Please choose another option below.".red #put this in red
            puts "---------------------------------------------------------------".red 
            side_menu
        end
    end
end