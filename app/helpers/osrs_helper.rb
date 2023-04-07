module OsrsHelper
    def skill_name_by_id(skill_id)
        skill_names = %w[
            Overall Attack Defence Strength Hitpoints Ranged
            Prayer Magic Cooking Woodcutting Fletching Fishing
            Firemaking Crafting Smithing Mining Herblore
            Agility Thieving Slayer Farming Runecrafting
            Hunter Construction
          ]

          skill_names[skill_id]
    end
end