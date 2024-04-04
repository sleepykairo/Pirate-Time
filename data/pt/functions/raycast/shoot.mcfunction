tag @s add raycasting

execute at @s anchored eyes positioned ^ ^ ^ run function pt:raycast/raycast

tag @s remove raycasting

scoreboard players set @s gc 25
scoreboard players reset .distance rc