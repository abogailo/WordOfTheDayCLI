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
        
        word_of_the_day(0)
        
        puts "1. See the definition".green
        puts "2. Show origin".green
        puts "3. Show pronunciation".green
        puts "4. Show yesterdays".green
        puts "5. Show last 7 days list of words".green
        puts "6. Show all that start with s".green
        puts "Type 'exit' at anytime to end program.".magenta
        puts ""
        input = gets.chomp
        
        case input
        
        when "1"    
            show_definition(0)
            side_menu
        when "2"    
           show_origin(0)
            side_menu
        when "3"
            show_pronunciation(0)
            side_menu
        when "4"
            show_yesterdays(1)
            go_to_menu
        when "5"
            show_last_seven
            go_to_menu
        when "6"
            show_all_s
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
        pretty_line
        puts ""
        puts "1. See the definition".green + "  2. Show origin".yellow + "  3. Show pronunciation".green + "  4. Show all".green
        puts ""
        puts "Type 'menu' for main menu.".blue + " Type 'exit' to exit".red
        

        input = gets.chomp
        
        case input
        
        when "1"    
            show_definition(0)
            side_menu
        when "2"    
            show_origin(0)
            side_menu
        when "3"
            show_pronunciation(0)
            side_menu
        when "4"
            show_yesterdays(0)
            go_to_menu
        when "menu"
            self.menu
        when "exit"
            exit
        else
            puts ""
            pretty_line
            puts ""
            puts ""
            puts "This option does not exist. Please choose another option below.".red #put this in red
            puts "---------------------------------------------------------------".red 
            side_menu
        end
    end

    def pretty_line
        puts "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "----".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green + "---".red + "---".green + "---".magenta + "---".yellow + "---".green
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

    def word_of_the_day(choice)
        choice = choice.to_i
        puts "   #{WordOfTheDay::Word.all[choice].wordy}".cyan
        puts ""
      end
  
      def show_definition(choice)
        choice = choice.to_i
        puts "#{WordOfTheDay::Word.all[choice].definition}".cyan
      end
      
  
      def show_pronunciation(choice)
        choice = choice.to_i
        puts "#{WordOfTheDay::Word.all[choice].pronunciation}".cyan
      end
  
      def show_origin(choice)
        choice = choice.to_i
        puts "#{WordOfTheDay::Word.all[choice].origin}".cyan
      end
  
      def show_yesterdays(choice)
            choice = choice.to_i
            puts ""
            puts ""
            pretty_line            
            puts ""
            puts "#{WordOfTheDay::Word.all[choice].wordy}".red
            puts "#{WordOfTheDay::Word.all[choice].pronunciation}".yellow
            puts "#{WordOfTheDay::Word.all[choice].definition}"
            puts "#{WordOfTheDay::Word.all[choice].origin}".magenta
            pretty_line
       #will return seven of this weeks words
       end
  
       def show_last_seven
         
        WordOfTheDay::Word.all.each_with_index do |item, index|
        
               puts "#{index + 1}. #{item.wordy}".red #add each with index thing. Avis video 42:03 and colors to format this better
               puts "#{item.pronunciation}".yellow
               puts "#{item.definition}"
               puts "#{item.origin}".magenta
               pretty_line
             
            end
       #will return seven of this weeks words
        end

        def show_all_s
            WordOfTheDay::Word.all_s_words.each_with_index do |item, index|
        
                puts "#{index + 1}. #{item.wordy}".red #add each with index thing. Avis video 42:03 and colors to format this better
                puts "#{item.pronunciation}".yellow
                puts "#{item.definition}"
                puts "#{item.origin}".magenta
                pretty_line
              
             end
        #will return all s words of this weeks words
         end

end