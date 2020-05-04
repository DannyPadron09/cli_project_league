class LeagueChampions::Champions 

    # @@champions = ["test"]

    def self.all
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

        # champion_1 = self.new
        # champion_1.name = "champion 1"
        # champion_1.position = "Aatrox is played as top"
        # champion_1.win_rate = "49%"
        # champion_1.ban_rate = "17.2%"

    end

end