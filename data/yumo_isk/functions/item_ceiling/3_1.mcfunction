#sb Mojang必须加一个中间层

#检测物品本体是否还存在
#不存在就夹断
execute unless entity @s run return 0


#计算大小
execute in yumo_cmp:yumo_cmp_load if data block 0 10 1 {Items:[{Count:64b}]} run scoreboard players set @s yumo.isk.item_ceiling 1
execute in yumo_cmp:yumo_cmp_load if data block 0 10 1 {Items:[{Count:16b}]} run scoreboard players set @s yumo.isk.item_ceiling 4
execute in yumo_cmp:yumo_cmp_load if data block 0 10 1 {Items:[{Count:1b}]} run scoreboard players set @s yumo.isk.item_ceiling 64

#标签结束
tag @s remove yumo_item_ceiling_tag_start
tag @s add yumo_item_ceiling_tag_over

tag @s remove yumo_item_ceiling_tag_1
#tag @e remove yumo_item_ceiling_tag_2