#统计物品拾取延迟
execute at @a[gamemode=!spectator] as @e[distance=..1.5,type=minecraft:item,tag=yumo_item_ceiling_tag_over,scores={yumo.isk.item_ceiling=1..63}] store result score @s yumo.isk.item.PickupDelay run data get entity @s PickupDelay

#如果玩家背包满了的话，检测周围有没有物品实体
execute as @a[gamemode=!spectator] at @s if score @s yumo.isk.player_backpack.max matches 1 if entity @e[distance=..1.5,type=minecraft:item,tag=yumo_item_ceiling_tag_over,scores={yumo.isk.item_ceiling=1..63,yumo.isk.item.PickupDelay=0}] run function yumo_isk:bundle/2

#自循环
schedule function yumo_isk:bundle/1 3t replace
