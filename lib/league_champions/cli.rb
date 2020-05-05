class LeagueChampions::CLI 

    def call
        list_champions
        menu
        exit_menu
    end

    def list_champions
       
        @champions = LeagueChampions::Champion.all
        @champions.each_with_index do |champion, index|
            puts "#{index + 1}. #{champion}" # - #{champion.position} - #{champion.win_rate} - #{champion.ban_rate}"
            # binding.pry
        end
    end

    def list_abilities

        @abilities = LeagueChampions::Ability.all 

    end
    

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the Champion you would like more info on"
            input = gets.strip.downcase
            if input.to_i - 1 >= 0 
                # binding.pry
                puts "Would you like to see stats for #{@champions[input.to_i - 1]}? [y/n]"
                input = gets.strip.downcase 
                if input == "y"
                    @champion.stats 
                else
                    list_champions
                end
                # puts @champions
            elsif input == "list"
                list_champions
            elsif input == "abilities"
                list_abilities
            else 
                puts " or 'list' to see the list again or 'exit' to exit program:"
            end

            # case input
            # when "1" # when 1 gets inputed i want it to find the first champion and displays its stats
                    # be able to input `abilities` to see individual champions abilities
                   ## 1 would send this to a sort of 'character menu'... maybe?
                # puts "Here are Champion 1 stats or Enter 'abilities' to see Champion Abilities:"
            # when "2"
            #   puts "Here are Champion 2 stats or Enter 'abilities' to see Champion Abilities:"
            # when "3"
            #    puts "Here are Champion 3 stats or Enter 'abilities' to see Champion Abilities:"
            # when "list"
                # list_champions
            # when "abilities"
                # list_abilities
            # end
        end
    end

    def exit_menu
        puts "Hope you found what you were looking for!"
    end
end