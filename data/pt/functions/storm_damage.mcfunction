execute as @s[scores={southHemisphere=0}] run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 1
execute as @s[scores={southHemisphere=1}] run playsound minecraft:entity.player.hurt_on_fire master sleepykairo ~ ~ ~ 1 1
execute as @s[scores={southHemisphere=1}] run playsound minecraft:entity.generic.extinguish_fire master sleepykairo ~ ~ ~ 1 1

execute as @s[scores={southHemisphere=0}] run damage @s 2 minecraft:freeze
execute as @s[scores={southHemisphere=1}] run damage @s 2 minecraft:on_fire

scoreboard players reset @s stormDamageDelay