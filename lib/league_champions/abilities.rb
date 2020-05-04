class LeagueChampions::Abilities

    def self.all
        puts <<-DOC
        Passive = passive_abilitiy
        Q Ability = q_ability
        W Ability = w_ability
        E Ability = e_ability
        R Ability = r_ability
    DOC
    
    end
end