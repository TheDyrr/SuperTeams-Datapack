# Player died - lose 1 power (min 0)
scoreboard players remove @s st_power 1
execute if entity @s[scores={st_power=..-1}] run scoreboard players set @s st_power 0
scoreboard players reset @s st_deaths
