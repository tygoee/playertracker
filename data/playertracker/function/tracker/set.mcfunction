execute store result storage playertracker:data player.id int 1 run scoreboard players operation #this playertracker.trackid = @s playertracker.trackid
scoreboard players reset @s playertracker.trackid

execute unless entity @a[predicate=playertracker:tracker,limit=1] run return run tellraw @s {"color":"red","text":"The player is offline or does not exist"}
execute unless items entity @s weapon.mainhand minecraft:compass[minecraft:custom_data~{tracking:true}|minecraft:custom_data~{tracking:false}] run return run tellraw @s {"color":"red","text":"You are not holding a Player Tracking Compass"}

tag @s add this
execute if items entity @s weapon.mainhand minecraft:compass[minecraft:custom_data~{tracking:true}|minecraft:custom_data~{tracking:false}] as @a[predicate=playertracker:tracker,limit=1] run return run item modify entity @a[tag=this] weapon.mainhand playertracker:set_tracker
tag @s remove this