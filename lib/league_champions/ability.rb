class LeagueChampions::Ability

    def self.all # abilities for selected champion
        puts <<-DOC
        Passive = passive_ability
        Q Ability = q_ability
        W Ability = w_ability
        E Ability = e_ability
        R Ability = r_ability
    DOC

    end
end