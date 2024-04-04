execute as @s[scores={storm=1..}] run effect give @s hunger 1 0 true
execute as @s[scores={storm=1..}] run weather thunder 5s

execute as @s[scores={storm=2,southHemisphere=0}] run particle minecraft:block water ~ ~15 ~ 10 0 10 0 500 normal @s
execute as @s[scores={storm=3,southHemisphere=0}] run particle minecraft:block blue_ice ~ ~15 ~ 10 0 10 0 500 normal @s
execute as @s[scores={storm=1,southHemisphere=1}] run particle minecraft:flame ~ ~15 ~ 10 10 10 0 100 normal @s
execute as @s[scores={storm=2,southHemisphere=1}] run particle minecraft:flame ~ ~15 ~ 10 10 10 0 200 normal @s
execute as @s[scores={storm=3,southHemisphere=1}] run particle minecraft:flame ~ ~15 ~ 10 10 10 0 500 normal @s

execute as @s[scores={storm=2}] run playsound minecraft:weather.rain.above master @s ~ ~ ~ 0.25 2
execute as @s[scores={storm=3}] run playsound minecraft:weather.rain.above master @s ~ ~ ~ 0.5 1

execute as @s[scores={storm=1,southHemisphere=1}] run title @a actionbar ["",{"text":"You are getting warmer","color":"gold"}]
execute as @s[scores={storm=2,southHemisphere=1}] run title @a actionbar ["",{"text":"Your skin is burning off","color":"#FF6000"}]
execute as @s[scores={storm=3,southHemisphere=1}] run title @a actionbar ["",{"text":"Your entire body is burning","color":"#FF000"}]

execute as @s[scores={storm=2,lightningDelay=20..}] run function pt:spawn_lightning
execute as @s[scores={storm=3,lightningDelay=4..}] run function pt:spawn_lightning

execute as @s[scores={storm=2,weatherDelay=20..,southHemisphere=0}] run function pt:spawn_falling_ice
execute as @s[scores={storm=3,weatherDelay=1..,southHemisphere=0}] run function pt:spawn_falling_ice

execute as @s[scores={storm=2,weatherDelay=20..,southHemisphere=1}] run function pt:spawn_falling_fire
execute as @s[scores={storm=3,weatherDelay=3..,southHemisphere=1}] run function pt:spawn_falling_fire



