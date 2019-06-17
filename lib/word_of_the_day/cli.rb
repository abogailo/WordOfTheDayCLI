#My CLI controller, responsible for business logic (stubbed out the controller)
class WordOfTheDay::CLI

    def call
        menu 
    end

    def menu
        puts "Today's Word of The Day:"
        @word = WordOfTheDay::Word.todays 
        puts "1. See the definition"
        puts "2. Show origin"
        puts "3. Show pronunciation"
        puts "4. Show last weeks list of words"
        puts ""
        puts "Type 'exit' at anytime to end program."

        input = gets.chomp

        case input
        
        when "1"    
            WordOfTheDay::Word.todays
            go_to_menu
        when "2"    
            WordOfTheDay::Word.show_origin
            go_to_menu
        when "3"
            WordOfTheDay::Word.show_pronunciation
            go_to_menu
        when "4"
            WordOfTheDay::Word.show_last_weeks
            go_to_menu
        when "exit"
            puts "" #look into formatting
            puts "Good-bye! Program is exiting..." #put this in yellow
            exit
        else
            puts "This option does not exist. Please choose another option." #put this in red
            menu
        end
        
    end

    def go_to_menu
        puts "Type 'menu' for menu."
        input = gets.chomp
        if (input == "menu")
            self.menu
        end
    end

end