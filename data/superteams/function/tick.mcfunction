execute as @a[scores={st_joined=0}] run function superteams:first_join
execute as @a[scores={st_respawn=0},nbt={Health:0.0f}] run scoreboard players set @s st_respawn 6
execute as @a[scores={st_respawn=1..}] run scoreboard players remove @s st_respawn 1
execute as @a[scores={st_respawn=1}] run function superteams:restore
execute as @a[scores={st_team=0,st_joined=1}] run function superteams:detect

# Power system - kill/death tracking
execute as @a[scores={st_team=1..,st_kills=1..}] run function superteams:power_kill
execute as @a[scores={st_team=1..,st_deaths=1..}] run function superteams:power_death

# Power system - apply buffs when power changes
execute as @a[scores={st_team=1..}] run function superteams:power_check
