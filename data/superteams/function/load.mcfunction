scoreboard objectives add st_joined dummy
scoreboard objectives add st_respawn dummy
scoreboard objectives add st_team dummy
scoreboard objectives add st_power dummy
scoreboard objectives add st_kills playerKillCount
scoreboard objectives add st_deaths deathCount
scoreboard objectives add st_power_last dummy
scoreboard objectives add st_offhand dummy
scoreboard objectives add st_cooldown dummy
scoreboard objectives add st_buff_timer dummy
# Re-apply buffs for existing players on reload
execute as @a[scores={st_team=1..}] unless score @s st_buff_timer matches 1.. run scoreboard players set @s st_buff_timer 18000
execute as @a[scores={st_team=1..}] run scoreboard players set @s st_power_last -1

team add doritos
team add cheetos
team add lays
team add takis
team add pringles
