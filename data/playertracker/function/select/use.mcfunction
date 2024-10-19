advancement revoke @s only playertracker:selecting
execute store result score #this playertracker.cooldown run time query gametime
scoreboard players add @s playertracker.cooldown 1
execute unless score @s playertracker.cooldown = #this playertracker.cooldown run function playertracker:select/select
scoreboard players operation @s playertracker.cooldown = #this playertracker.cooldown