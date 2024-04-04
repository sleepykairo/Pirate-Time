summon marker ~ ~ ~ {Tags:[iceMarker]}
spreadplayers ~ ~ 20 50 false @e[tag=iceMarker]
execute at @e[tag=iceMarker] run summon minecraft:falling_block ~ ~25 ~ {BlockState:{Name:"ice"},Motion:[0d,-1d,0d]}
kill @e[tag=iceMarker]
scoreboard players reset @s weatherDelay