scoreboard players add @a[scores={storm=2..}] lightningDelay 1
scoreboard players add @a[scores={storm=2..}] weatherDelay 1
scoreboard players add @a[scores={storm=2..}] stormDamageDelay 1

scoreboard players remove @a gc 1
scoreboard players add @e alive 1

execute as @a store result score @s posX run data get entity @s Pos[0]
execute as @a store result score @s posZ run data get entity @s Pos[2]

execute as @e store result score @s velX run data get entity @s Motion[0]
execute as @e store result score @s velY run data get entity @s Motion[1]
execute as @e store result score @s velZ run data get entity @s Motion[2]

execute as @a[scores={storm=1..},tag=!stormless] at @s run function pt:hard_rain

execute as @a[scores={posX=0..}] run scoreboard players set @s southHemisphere 0 
execute as @a[scores={posX=..-1}] run scoreboard players set @s southHemisphere 1

execute at @e[tag=center] positioned ~-1920 -64 ~-1920 as @a unless entity @s[dx=3839,dy=500,dz=3839] run scoreboard players set @s storm 3
execute at @e[tag=center] positioned ~-1920 -64 ~-1920 as @a[dx=3839,dy=500,dz=3839] positioned ~128 ~ ~128 unless entity @s[dx=3583,dy=500,dz=3583] run scoreboard players set @s storm 2
execute at @e[tag=center] positioned ~-1792 -64 ~-1792 as @a[dx=3583,dy=500,dz=3583] positioned ~128 ~ ~128 unless entity @s[dx=3327,dy=500,dz=3327] run scoreboard players set @s storm 1
execute at @e[tag=center] positioned ~-1664 -64 ~-1664 as @a[dx=3327,dy=500,dz=3327] run scoreboard players set @s storm 0

execute as @e[tag=!newVel,nbt={item:{tag:{cannonball:1}}}] run function pt:cannonball_spawn
scoreboard players reset @a crossbow

execute as @e[type=#arrows,nbt={item:{tag:{cannonball:1}},inGround:1b},tag=newVel] at @s run function pt:cannonball_land
