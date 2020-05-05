


class LeagueChampions::Stats

    def self.stats(champion_input)   # abilities for selected champion
        doc = Nokogiri::HTML(open("https://www.mobafire.com/league-of-legends/champions"))
        @win_rate = doc.css("div.original").text
        @win_rate = @win_rate.split(" ")
        @ban_rate = doc.css("div.champ-list__item__banP").text
        @ban_rate = @ban_rate.split(" ")
        puts "Win Rate of the team with this Champion in the roster : #{@win_rate[champion_input.to_i - 1]} - The percentage of times this Champion gets banned : #{@ban_rate[champion_input.to_i - 1]}"
        # champion_input
        # @position = doc.css("div.champ-list__item__role img").attr('alt').value
        # @win_rate.split(" ").each_with_index do |rate, index|
            # puts "#{index-1}. #{rate}"
        # end
        # puts @ban_rate
        # puts position 

    end

    # def self.position
        # doc = Nokogiri::HTML(open("https://www.mobafire.com/league-of-legends/champions"))
        # position = doc.css("div.champ-list__item__role img").attr('alt').value
        # binding.pry
        # position.each_with_index do |position, index|
            # puts "#{index - 1}. #{position}"
        # end
    # end
end