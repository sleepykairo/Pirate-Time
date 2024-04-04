summon marker ~ ~ ~ {Tags:[fireMarker]}
spreadplayers ~ ~ 20 50 false @e[tag=fireMarker]
execute at @e[tag=fireMarker] run summon minecraft:fireball ~ ~25 ~ {Motion:[0d,-3d,0d],ExplosionPower:1}
kill @e[tag=fireMarker]
scoreboard players reset @s weatherDelay