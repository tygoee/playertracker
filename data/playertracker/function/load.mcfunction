advancement revoke @a only playertracker:tracking

scoreboard objectives add playertracker.trackid trigger
scoreboard objectives add playertracker.id dummy
scoreboard objectives add playertracker.cooldown dummy

data modify storage playertracker:data names set value []