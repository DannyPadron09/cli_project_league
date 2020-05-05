require 'nokogiri'
require 'open-uri'
require 'pry'


class LeagueChampions::Champion
    attr_accessor :name, :position, :win_rate, :ban_rate, :stats 
    @@champions = {} # Indexed Champions

    # doc = Nokogiri::HTML(open("https://www.mobafire.com/league-of-legends/champions"))
    # binding.pry
    # listed_champions = doc.css("div.champ-list__item__name b").text
    # @split_champions = listed_champions.split(/(?<!\s)(?=[A-Z])/)
    
    def self.all
        doc = Nokogiri::HTML(open("https://www.mobafire.com/league-of-legends/champions"))
        name = doc.css("div.champ-list__item__name b").text
        @@champions = name.split(/(?<!\s)(?=[A-Z])/)
    end

    
        # doc = Nokogiri::HTML(open("https://www.mobafire.com/league-of-legends/champions"))
        # all_champions = []
        # list_of_champions = doc.css("div.champ-list.champ-list--details.self-clear")
        # list_of_champions.css("div.champ-list__item__role")
            # name = doc.css("div.champ-list__item__name b").text
            # split_names = name.split(/(?<!\s)(?=[A-Z])/)
            # win_rate = list_of_champions.css("div.champ-list__item__role i").text 
            # ban_rate = list_of_champions.css("div.champ-list__item__banP").text
            # position = list_of_champions.css("div.champ-list__item__role img").attr('alt').value
            # champion_stats = {:name => split_names,
                # :win_rate => win_rate.split("%"),
                # :ban_rate => ban_rate.split("%"),
                # :position => position}
            #    binding.pry
                # all_champions << champion_stats.#.each |champion| puts "#{:name} - Win Rate : #{:win_rate} - Ban Rate : #{:ban_rate} - Position : #{:position}."
                # binding.pry
        # end

        # binding.pry
        # name = doc.css("div.champ-list__item__name b").text
        # listed_names = name.split(/(?<!\s)(?=[A-Z])/).each_with_index{ |champion, index| puts "#{index+1}. #{champion}"}
        # win_rate = [doc.css("div.original").text]
        # ban_rate = doc.css("div.champ-list__item__banP").text
        # position = doc.css("div.champ-list__item__role img").attr('alt')
        # name = doc.css("div.champ-list__item__name b").text
        # binding.pry
        # champion = {:name => listed_names.each_with_index{ |champion, index| },
            # :win_rate => win_rate.each_with_index{ |champion, index| },
            # :ban_rate => ban_rate.each_with_index{ |champion, index| },
            # :position => position.each_with_index{ |champion, index| }}
            # all_champions << champion 
            # listed_names.each_with_index{ |champion, index| puts "#{:name}. Win Rate : #{:win_rate}. Ban Rate : #{:ban_rate}. Position : #{:position}"}
            # all_champions
        # @@champions = name.split(/(?<!\s)(?=[A-Z])/)
        
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
    # binding.pry 
    
end

# binding.pry
