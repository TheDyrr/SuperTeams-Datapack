# Only run if power changed
execute unless score @s st_power = @s st_power_last run function superteams:power_apply
