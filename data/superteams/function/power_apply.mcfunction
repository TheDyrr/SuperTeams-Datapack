# Clear all effects first
effect clear @s

# Record current power as last so we don't re-run
scoreboard players operation @s st_power_last = @s st_power

# Power 0 = no buff
# Power 1-4 = level 1
# Power 5 = level 2

# Doritos (team 1) - Strength
execute if entity @s[scores={st_team=1,st_power=1..4}] run effect give @s strength 999999 0 true
execute if entity @s[scores={st_team=1,st_power=5}] run effect give @s strength 999999 1 true

# Cheetos (team 2) - Speed
execute if entity @s[scores={st_team=2,st_power=1..4}] run effect give @s speed 999999 0 true
execute if entity @s[scores={st_team=2,st_power=5}] run effect give @s speed 999999 1 true

# Lays (team 3) - Resistance
execute if entity @s[scores={st_team=3,st_power=1..4}] run effect give @s resistance 999999 0 true
execute if entity @s[scores={st_team=3,st_power=5}] run effect give @s resistance 999999 1 true

# Takis (team 4) - Fire Resistance (+ Health Boost at power 5)
execute if entity @s[scores={st_team=4,st_power=1..4}] run effect give @s fire_resistance 999999 0 true
execute if entity @s[scores={st_team=4,st_power=5}] run effect give @s fire_resistance 999999 0 true
execute if entity @s[scores={st_team=4,st_power=5}] run effect give @s health_boost 999999 1 true

# Pringles (team 5) - Haste
execute if entity @s[scores={st_team=5,st_power=1..4}] run effect give @s haste 999999 0 true
execute if entity @s[scores={st_team=5,st_power=5}] run effect give @s haste 999999 1 true

# Power 0 message
execute if entity @s[scores={st_power=0}] run title @s actionbar {"text":"Power lost! Get a kill to regain your buff!","color":"red"}

# Power 5 message
execute if entity @s[scores={st_power=5}] run title @s actionbar {"text":"MAX POWER! Buff upgraded!","color":"gold"}
