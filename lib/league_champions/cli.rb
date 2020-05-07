require_relative './champion'

class LeagueChampions::CLI 
    attr_accessor :position, :win_rate, :ban_rate, :name, :stats 
    def call
        welcome
        list_champions
        menu
        exit_menu
    end

    def welcome
        puts <<-DOC


   _       ___  ____  ____ __ __   ___       ___  _____      _       ___  ____   ___ ____  ___   _____
  | |     /  _]/    |/    |  |  | /  _]     /   \ |     |    | |     /  _]/    | /  _|    \ |   \ / ___/
  | |    /  [_|  o  |   __|  |  |/  [_     |     |   __|    | |    /  [_|   __|/  [_|  _  |     (   \_ 
  | |___|    _|     |  |  |  |  |    _]    |  O  |  |_      | |___|    _|  |  |    _|  |  |  D  \__  |
  |     |   [_|  _  |  |_ |  :  |   [_     |     |   _]     |     |   [_|  |_ |   [_|  |  |     /  \ |
  |     |     |  |  |     |     |     |    |     |  |       |     |     |     |     |  |  |     \    |
  |_____|_____|__|__|___,_|\__,_ |_____|      \___/|__|       |_____|_____|___,_|_____|__|__|_____|\___|
                                                                                                      
                                          __ __ __  ____ ___ ___ ____ ____ ___  ____   _____          
                                         /  |  |  |/    |   |   |    |    /   \ |    \ /  ___/          
                                        /  /|  |  |  o  | _   _ |  o  |  |     |  _  (   \_           
                                       /  / |  _  |     |   \_/  |   _/|  |  O  |  |  |\__  |          
                                      /    \_|  |  |  _  |   |   |  |  |  |     |  |  |/  \ |          
                                      \      |  |  |  |  |   |   |  |  |  |     |  |  |\    |          
                                       \____ |__|__|__|__|___|___|__| |____\___/|__|__| \___|          
                                                                                                      

===============================================================================================================


            PRESS 'ENTER' TO BEGIN!
 
 
 
 DOC

        input = gets.strip.downcase 
 end

    def list_champions
        listed_names = []
        hide_names = ['Gath', 'V', 'Sa', 'Zix', 'Maw', 'Blanc', 'Sai', 'Koz',]
       
        @champions = LeagueChampions::Champion.all
        @champions.delete_at(19)
        @champions.delete_at(44)
        @champions.delete_at(49)
        @champions.delete_at(58)
        @champions.delete_at(61)
        @champions.delete_at(62)
        @champions.delete_at(93)
        @champions.delete_at(130)

        # binding.pry
        @champions.each_with_index do |champion, index|
            puts  "#{index + 1}. #{champion}"
            # final_list = listed_names.reject { |x| hide_names.include?(x)}
            # puts final_list 
        end
    end

    def list_abilities

        @abilities = LeagueChampions::Ability.all 

    end    

    def menu
        input = nil
        champion_input = 0
        while ((input != "exit") && (champion_input != "exit"))
            puts "Enter the number of the Champion you would like more info on"
            champion_input = gets.strip.downcase
            # @selected_champion = champion_input 
            # binding.pry
            if champion_input.to_i - 1 >= 0 
                # puts @champions[champion_input.to_i - 1]#{:win_rate, :ban_rate, :position}
                puts "Would you like to see stats for #{@champions[champion_input.to_i - 1]}? [y/n]"
                input = gets.strip.downcase 
                if input == "y"
                    puts @selected_champion
                    stats(champion_input)
                    # binding.pry
                else
                    list_champions
                end
                puts @champions
            # elsif input == "list"
                # list_champions
            # elsif input == "abilities"
                # list_abilities
            # else 
                # puts " or 'list' to see the list again or 'exit' to exit program:"
            # end

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
            end
        end
    end

    def stats(champion_input)
      LeagueChampions::Stats.stats(champion_input)
      #   binding.pry 
    end

    def exit_menu
        puts "Hope you found what you were looking for!"
    end
end