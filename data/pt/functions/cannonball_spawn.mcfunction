execute store result score @s newX run data get entity @s Motion[0] 1000
execute run scoreboard players operation @s newX *= multiply num
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s newX

execute store result score @s newY run data get entity @s Motion[1] 1000
execute run scoreboard players operation @s newY *= multiply num
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get @s newY

execute store result score @s newZ run data get entity @s Motion[2] 1000
execute run scoreboard players operation @s newZ *= multiply num
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s newZ

tag @s add newVel