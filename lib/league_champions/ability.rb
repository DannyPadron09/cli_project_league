
require 'open-uri'
class LeagueChampions::Ability

    #  def self.all # abilities for selected champion
        
        #  @champion_links = []
        #  doc.css("div.champ-list.champ-list--details.self-clear a").each do |champion|
            #  @champion_links << champion.attr('href')
            #  end  
        


       
        # end
        
        def self.get_ability(champion_input)
            @champion_links = []
            doc = Nokogiri::HTML(open("https://www.mobafire.com/league-of-legends/champions"))
            doc.css("div.champ-list.champ-list--details.self-clear a").each do |champion|
                @champion_links << champion.attr('href')
            end  
            # puts "https:/#{@champion_links[champion_input.to_i - 1]}/abilities"
            # binding.pry
            # binding.pry 
            link = Nokogiri::HTML(open("https://mobafire.com#{@champion_links[champion_input.to_i - 1]}/abilities"))
            ability = link.css("div.champ-abilities__item__name").text.split("\n")
            # binding.pry
            puts ability 
           
            puts "Enter 'list' to see the list again or 'exit' to exit"
            input = gets.strip.downcase #waits for user to input something
        end 
        # binding.pry
        # doc.css("div.champ-list.champ-list--details.self-clear").css("a").attr("href").map do |a|
            # champion_link = a.text
            # champion_links_all << champion_link
            # end
            # input = gets.strip.downcase
        # links = doc.css("a")
 
        # links.each do |link, index|
 
        # end
        # links[22]["href"] += "/abilities"
    # end
    end
