scoreboard players add @a[scores={storm=2..}] lightningDelay 1
scoreboard players add @a[scores={storm=2..}] weatherDelay 1

scoreboard players remove @a gc 1



execute as @a[scores={storm=1..},tag=!stormless] at @s run function pt:hard_rain

execute at @e[tag=center] positioned ~-6 ~ ~-6 run particle dust 1 0 0 1 ~ ~ ~ 0 1 0 1 10 normal
execute at @e[tag=center] positioned ~-5 ~ ~-5 run particle dust 1 0.5 0 1 ~ ~ ~ 0 1 0 1 10 normal
execute at @e[tag=center] positioned ~-4 ~ ~-4 run particle dust 1 1 0 1 ~ ~ ~ 0 1 0 1 10 normal

execute at @e[tag=center] positioned ~6 ~ ~6 run particle dust 0 0 1 1 ~ ~ ~ 0 1 0 1 10 normal
execute at @e[tag=center] positioned ~5 ~ ~5 run particle dust 0 0.5 1 1 ~ ~ ~ 0 1 0 1 10 normal
execute at @e[tag=center] positioned ~4 ~ ~4 run particle dust 0 1 1 1 ~ ~ ~ 0 1 0 1 10 normal

execute at @e[tag=center] positioned ~-3 ~ ~-3 run particle dust 1 1 1 1 ~ ~ ~ 0 1 0 1 10 normal
execute at @e[tag=center] positioned ~3 ~ ~3 run particle dust 1 1 1 1 ~ ~ ~ 0 1 0 1 10 normal

execute at @e[tag=center] positioned ~ ~ ~ run particle dust 0 0 0 1 ~ ~ ~ 0 1 0 1 10 normal


execute at @e[tag=center] positioned ~-6 ~ ~-6 as @a[dx=11,dy=2,dz=5] positioned ~ ~ ~6 unless entity @s[dx=-11,dy=2,dz=-5] run scoreboard players set @s southHemisphere 1
execute at @e[tag=center] positioned ~6 ~ ~6 as @a[dx=-11,dy=2,dz=-5] run scoreboard players set @s southHemisphere 0

#execute at @e[tag=center] positioned ~-6 ~ ~-6 as @a[dx=11,dy=2,dz=11] positioned ~1 ~ ~1 unless entity @s[dx=9,dy=2,dz=9] run scoreboard players set @s storm 3
execute at @e[tag=center] positioned ~-5 ~ ~-5 as @a unless entity @s[dx=9,dy=2,dz=9] run scoreboard players set @s storm 3
execute at @e[tag=center] positioned ~-5 ~ ~-5 as @a[dx=9,dy=2,dz=9] positioned ~1 ~ ~1 unless entity @s[dx=7,dy=2,dz=7] run scoreboard players set @s storm 2
execute at @e[tag=center] positioned ~-4 ~ ~-4 as @a[dx=7,dy=2,dz=7] positioned ~1 ~ ~1 unless entity @s[dx=5,dy=2,dz=5] run scoreboard players set @s storm 1
execute at @e[tag=center] positioned ~-3 ~ ~-3 as @a[dx=5,dy=2,dz=5] run scoreboard players set @s storm 0
