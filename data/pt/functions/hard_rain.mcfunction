execute as @s[scores={storm=1..}] run effect give @s hunger 1 1 true
execute as @s[scores={storm=1..}] run weather thunder 5s

execute as @s[scores={storm=2,southHemisphere=0}] run particle minecraft:block water ~ ~15 ~ 10 0 10 0 100 normal @s
execute as @s[scores={storm=2,southHemisphere=0}] run particle minecraft:block water ~ ~15 ~ 10 0 10 0 500 normal @s
execute as @s[scores={storm=3,southHemisphere=0}] run particle minecraft:block blue_ice ~ ~15 ~ 10 0 10 0 500 normal @s
execute as @s[scores={storm=2..,southHemisphere=1}] run particle minecraft:white_smoke ~ ~15 ~ 10 10 10 0 300 normal @s
execute as @s[scores={storm=3,southHemisphere=1}] run particle minecraft:flame ~ ~15 ~ 10 10 10 0 50 normal @s

execute as @s[scores={storm=2}] run playsound minecraft:weather.rain.above master @s ~ ~ ~ 0.25 2
execute as @s[scores={storm=3}] run playsound minecraft:weather.rain.above master @s ~ ~ ~ 0.5 1

execute as @s[scores={storm=1,southHemisphere=1}] run title @a actionbar ["",{"text":"You are getting warmer","color":"#FFFF00"}]
execute as @s[scores={storm=2,southHemisphere=1}] run title @a actionbar ["",{"text":"The rain burns on your skin","color":"#FF8000"}]
execute as @s[scores={storm=3,southHemisphere=1}] run title @a actionbar ["",{"text":"Fire engulfs your body","color":"#FF0000"}]

execute as @s[scores={storm=1,southHemisphere=0}] run title @a actionbar ["",{"text":"You start to shiver","color":"#00FFFF"}]
execute as @s[scores={storm=2,southHemisphere=0}] run title @a actionbar ["",{"text":"Your skin is freezing off","color":"#0080FF"}]
execute as @s[scores={storm=3,southHemisphere=0}] run title @a actionbar ["",{"text":"Your tears freeze to your eyes ","color":"#0000FF"}]

execute as @s[scores={storm=2,lightningDelay=20..}] run function pt:spawn_lightning
execute as @s[scores={storm=3,lightningDelay=4..}] run function pt:spawn_lightning

execute as @s[scores={storm=2,weatherDelay=20..,southHemisphere=0}] run function pt:spawn_falling_ice
execute as @s[scores={storm=3,weatherDelay=1..,southHemisphere=0}] run function pt:spawn_falling_ice

execute as @s[scores={storm=2,weatherDelay=20..,southHemisphere=1}] run function pt:spawn_falling_fire
execute as @s[scores={storm=3,weatherDelay=3..,southHemisphere=1}] run function pt:spawn_falling_fire

execute as @s[scores={storm=2,stormDamageDelay=100..}] run function pt:storm_damage
execute as @s[scores={storm=3,stormDamageDelay=50..}] run function pt:storm_damage



