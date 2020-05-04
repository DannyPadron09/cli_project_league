class LeagueChampions::CLI 

    def call
        list_champions
        menu
        exit_menu
    end

    def list_champions
       
        @champions = LeagueChampions::Champions.all

    end

    def list_abilities

        @abilities = LeagueChampions::Abilities.all 
        
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the Champion you would like more info on or 'list' to see the list again or 'exit' to exit program:"
            input = gets.strip.downcase
            case input
            when "1"
                puts "Here are Champion 1 stats or Enter 'abilities' to see Champion Abilities:"
            when "2"
              puts "More info for Champion 2..."
            when "3"
               puts "More info for Champion 3..."
            when "list"
                list_champions
            when "abilities"
                list_abilities
            end
        end
    end

    def exit_menu
        puts "Hope you found what you were looking for!"
    end
end