# Check if player's team chip is in offhand
# st_offhand: 0 = not in offhand, 1 = in offhand

# Detect chip in offhand
execute if entity @s[scores={st_team=1}] if items entity @s weapon.offhand minecraft:echo_shard run scoreboard players set @s st_offhand 2
execute if entity @s[scores={st_team=2}] if items entity @s weapon.offhand minecraft:phantom_membrane run scoreboard players set @s st_offhand 2
execute if entity @s[scores={st_team=3}] if items entity @s weapon.offhand minecraft:heart_of_the_sea run scoreboard players set @s st_offhand 2
execute if entity @s[scores={st_team=4}] if items entity @s weapon.offhand minecraft:nautilus_shell run scoreboard players set @s st_offhand 2
execute if entity @s[scores={st_team=5}] if items entity @s weapon.offhand minecraft:prismarine_crystals run scoreboard players set @s st_offhand 2

# If st_offhand changed from 0 to 2, chip was just placed - recharge
execute if entity @s[scores={st_offhand=2}] run function superteams:power_apply
execute if entity @s[scores={st_offhand=2}] run title @s actionbar {"text":"Buff recharged! 15 minutes (10 min cooldown)","color":"green"}
execute if entity @s[scores={st_offhand=2}] run scoreboard players set @s st_cooldown 12000
execute if entity @s[scores={st_offhand=2}] run scoreboard players set @s st_offhand 1

# If chip is no longer in offhand, reset to 0
execute if entity @s[scores={st_team=1,st_offhand=1}] unless items entity @s weapon.offhand minecraft:echo_shard run scoreboard players set @s st_offhand 0
execute if entity @s[scores={st_team=2,st_offhand=1}] unless items entity @s weapon.offhand minecraft:phantom_membrane run scoreboard players set @s st_offhand 0
execute if entity @s[scores={st_team=3,st_offhand=1}] unless items entity @s weapon.offhand minecraft:heart_of_the_sea run scoreboard players set @s st_offhand 0
execute if entity @s[scores={st_team=4,st_offhand=1}] unless items entity @s weapon.offhand minecraft:nautilus_shell run scoreboard players set @s st_offhand 0
execute if entity @s[scores={st_team=5,st_offhand=1}] unless items entity @s weapon.offhand minecraft:prismarine_crystals run scoreboard players set @s st_offhand 0
