class LeagueChampions::CLI 

    def call
        list_champions
        menu
        exit_menu
    end

    def list_champions
        puts <<-DOC
        List of Current Available Champions:
            1. Champion 1
            2. Champion 2
            3. Champion 3
            4. Champion 4
            5. Champion 5
            6. Champion 6
            7. Champion 7
            8. Champion 8
            9. Champion 9
            10. Champion 10
        DOC
        # @champions = LeagueChampions::Champions.all
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the Champion you would like more info on or 'list' to see the list again or 'exit' to exit program:"
            input = gets.strip.downcase
            case input
            when "1"
                puts "More info for Champion 1..."
            when "2"
              puts "More info for Champion 2..."
            when "3"
               puts "More info for Champion 3..."
            when "list"
                list_champions 
            end
        end
    end

    def exit_menu
        puts "Hope you found what you were looking for!"
    end
end