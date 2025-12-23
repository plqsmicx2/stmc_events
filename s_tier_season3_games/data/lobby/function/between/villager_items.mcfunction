
#change unnamed item from villager to random item of type

#tipped arrows
execute if items entity @s hotbar.* tipped_arrow[tooltip_display={hide_tooltip:true}] run loot give @s loot lobby:jan26/category/arrows
execute if items entity @s hotbar.* tipped_arrow[tooltip_display={hide_tooltip:true}] run clear @s tipped_arrow[tooltip_display={hide_tooltip:true}] 1

#horns
execute if items entity @s hotbar.* goat_horn[tooltip_display={hide_tooltip:true}] run loot give @s loot lobby:jan26/category/horns
execute if items entity @s hotbar.* goat_horn[tooltip_display={hide_tooltip:true}] run clear @s goat_horn[tooltip_display={hide_tooltip:true}] 1

#potions
execute if items entity @s hotbar.* potion[tooltip_display={hide_tooltip:true}] run loot give @s loot lobby:jan26/category/potions
execute if items entity @s hotbar.* potion[tooltip_display={hide_tooltip:true}] run clear @s potion[tooltip_display={hide_tooltip:true}] 1

#suspicious stews
execute if items entity @s hotbar.* suspicious_stew[tooltip_display={hide_tooltip:true}] run loot give @s loot lobby:jan26/category/suspicious
execute if items entity @s hotbar.* suspicious_stew[tooltip_display={hide_tooltip:true}] run clear @s suspicious_stew[tooltip_display={hide_tooltip:true}] 1

#trial key
execute if items entity @s hotbar.* trial_key run loot give @s loot lobby:jan26/category/normal
execute if items entity @s hotbar.* trial_key run clear @s trial_key 1

#ominous trial key
execute if items entity @s hotbar.* ominous_trial_key run loot give @s loot lobby:jan26/category/oxidized
execute if items entity @s hotbar.* ominous_trial_key run clear @s ominous_trial_key 1

