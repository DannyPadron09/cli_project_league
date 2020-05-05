class LeagueChampions::Ability

    def self.all # abilities for selected champion
        doc = Nokogiri::HTML(open("https://www.mobafire.com/league-of-legends/champions"))
        all_abilities = []

       
        binding.pry
    end

    def get_links
        all_links = doc.css("div.champ-list.champ-list--details.self-clear")
        links = doc.css("a")

        links.each do |link, index|
            
        end
        # links[22]["href"] += "/abilities"
    end
end