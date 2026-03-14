# Player got a kill - add 1 power (max 5)
scoreboard players add @s st_power 1
execute if entity @s[scores={st_power=6..}] run scoreboard players set @s st_power 5
scoreboard players reset @s st_kills
title @s actionbar {"text":"+1 Power!","color":"green"}
