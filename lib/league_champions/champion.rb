require 'nokogiri'
require 'open-uri'
require 'pry'


class LeagueChampions::Champion
    attr_accessor :name, :position, :win_rate, :ban_rate
    @@champions = () # Indexed Champions

    # doc = Nokogiri::HTML(open("https://www.mobafire.com/league-of-legends/champions"))
    # binding.pry
    # listed_champions = doc.css("div.champ-list__item__name b").text
    # @split_champions = listed_champions.split(/(?<!\s)(?=[A-Z])/)
    
    def self.all
        doc = Nokogiri::HTML(open("https://www.mobafire.com/league-of-legends/champions"))
        name = doc.css("div.champ-list__item__name b").text
        @@champions = name.split(/(?<!\s)(?=[A-Z])/)
        
        # win_rate = doc.css("div.original").text
        # ban_rate = doc.css("div.champ-list__item__banP").text
        # position = doc.css("div.champ-list__item__role img").attr('alt').value
        
        # binding.pry 
        # Scraper.scrape_names_and_stats
        # puts <<-DOC.gsub /^\s*/, ''
        # List of Current Available Champions:
            # 1. Champion 1
            # 2. Champion 2
            # 3. Champion 3
            # 4. Champion 4
            # 5. Champion 5
            # 6. Champion 6
            # 7. Champion 7
            # 8. Champion 8
            # 9. Champion 9
            # 10. Champion 10
        # DOC
        # 
        ### Champion Stats
        # 
        # champion_1 = self.new
        # puts champion_1.name = "champion 1"
        # puts champion_1.position = "Aatrox is played as top"
        # puts champion_1.win_rate = "Team Win Percentage when this champion is in roster: 49%"
        # puts champion_1.ban_rate = "The percentage this champion gets banned: 17.2%"
# 
        # [champion_1]
    end

    def self.stats
        win_rate = doc.css("div.original").text
        ban_rate = doc.css("div.champ-list__item__banP").text
        position = doc.css("div.champ-list__item__role img").attr('alt').value
        @@champions.self.stats = win_rate, ban_rate, position 
        # puts win_rate
        # puts ban_rate
        # puts position
            # binding.pry
    end
# binding.pry
end

# binding.pry
