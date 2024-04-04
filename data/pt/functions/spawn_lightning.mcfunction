summon marker ~ ~ ~ {Tags:[lightningMarker]}
spreadplayers ~ ~ 20 50 false @e[tag=lightningMarker]
execute at @e[tag=lightningMarker] run summon lightning_bolt
kill @e[tag=lightningMarker]
scoreboard players reset @s lightningDelay