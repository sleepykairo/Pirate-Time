execute as @e[tag=!raycasting,type=!#pt:not_mob,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function pt:raycast/collide
execute positioned ^ ^ ^0.1 unless block ~ ~ ~ #pt:raycast_pass positioned ^ ^ ^-0.25 run summon marker ~ ~ ~ {Tags:["CannonballLand"]}

scoreboard players add .distance rc 1

particle minecraft:dust_color_transition 0.85 0.85 0.85 0.5 1 0 0 ~ ~-0.1 ~ 0 0 0 0 1 force

execute if score .distance rc matches ..100 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #pt:raycast_pass run function pt:raycast/raycast