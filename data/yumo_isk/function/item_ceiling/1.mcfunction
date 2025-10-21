#不存在有标记物品时 随机一个玩家 最近的未被标记 未计算数量的 物品添加tag标记
execute unless entity @e[tag=yumo_item_ceiling_tag_1] unless entity @e[tag=yumo_item_ceiling_tag_start] unless entity @e[tag=yumo_item_ceiling_tag_2] at @r as @e[type=minecraft:item,limit=1,sort=nearest,tag=!yumo_item_ceiling_tag_2,tag=!yumo_item_ceiling_tag_1,tag=!yumo_item_ceiling_tag_over] run function yumo_isk:item_ceiling/1_1

schedule function yumo_isk:item_ceiling/1 1t replace