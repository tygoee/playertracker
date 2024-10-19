advancement revoke @s only playertracker:tracking

data modify storage playertracker:macro playerdata set from entity @s Inventory[{components:{"minecraft:custom_data":{"tracking":true}}}]
execute store result score $this playertracker.id run data get storage playertracker:macro playerdata.components.minecraft:custom_data.player
data modify storage playertracker:data player set from entity @a[predicate=playertracker:tracker,limit=1]
data modify storage playertracker:macro lodestone.pos set from storage playertracker:data player.Pos
data modify storage playertracker:macro lodestone.dimension set from storage playertracker:data player.Dimension
data modify storage playertracker:macro lodestone.slot set from storage playertracker:macro playerdata.Slot

function playertracker:tracker/lodestone with storage playertracker:macro lodestone