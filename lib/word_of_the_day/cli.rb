#My CLI controller, responsible for business logic (stubbed out the controller)
class WordOfTheDay::CLI

    attr_accessor :date
    def call
        puts "Today's Word of The Day:"
        show_WOTD
        menu
    end

    def show_WOTD
        puts "funky-feet"
    end

    def menu
        puts "Would you like to see the definition"
        input = gets.chomp
        case input
        
        when "NO"
            show_more_options
        when "YES"    
            show_def
        end
      #  if(input == no) 
       #     show_more_options 
        
    end

    def show_more_options
        puts "Would you like to pick any date?"
        input = gets.chomp
        case input
        
        when "NO"
            puts "exiting"
        when "YES"    
            date = gets.chomp
            validate_date(date)
        end
       
    end

    def validate_date(date=nil)
        puts date
    end
    def show_def
        puts "when you got stank feet"
    end

end