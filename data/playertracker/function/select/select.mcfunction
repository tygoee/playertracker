scoreboard players enable @s playertracker.trackplayer
tellraw @s {"color":"gold","text":"Please select a player to track: "}

tag @s add this
execute as @a run function playertracker:select/getid
tag @s remove this