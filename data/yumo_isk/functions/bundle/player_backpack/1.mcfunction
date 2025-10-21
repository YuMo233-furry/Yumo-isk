#获取背包，检测是否为满
scoreboard players set @s yumo.isk.player_backpack.max 0
execute store result score @s yumo.isk.player_backpack if data entity @s Inventory[]
#减去装备和副手的
execute if data entity @s {Inventory:[{Slot:100b}]} run scoreboard players remove @s yumo.isk.player_backpack 1
execute if data entity @s {Inventory:[{Slot:101b}]} run scoreboard players remove @s yumo.isk.player_backpack 1
execute if data entity @s {Inventory:[{Slot:102b}]} run scoreboard players remove @s yumo.isk.player_backpack 1
execute if data entity @s {Inventory:[{Slot:103b}]} run scoreboard players remove @s yumo.isk.player_backpack 1
execute if data entity @s {Inventory:[{Slot:-106b}]} run scoreboard players remove @s yumo.isk.player_backpack 1

execute if score @s yumo.isk.player_backpack matches 36.. run scoreboard players set @s yumo.isk.player_backpack.max 1