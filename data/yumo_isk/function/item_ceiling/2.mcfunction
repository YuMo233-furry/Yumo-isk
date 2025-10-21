#初始化
#漏斗初始化
execute in yumo_cmp:yumo_cmp_load run data remove block 0 10 1 Items
execute in yumo_cmp:yumo_cmp_load run data modify block 0 10 1 Items set value [{count:63,Slot:0b,id:"minecraft:stone"},{count:15,Slot:1b,id:"minecraft:stone"}]

#设置成tag_1的item
execute in yumo_cmp:yumo_cmp_load run data modify block 0 10 1 Items[0].id set from entity @s Item.id
execute in yumo_cmp:yumo_cmp_load run data modify block 0 10 1 Items[1].id set from entity @s Item.id

#生成实体_tag_2
execute in yumo_cmp:yumo_cmp_load positioned 0 10.5 1 run summon minecraft:item ~ ~ ~ {Item:{count:1,id:"minecraft:stone"},Tags:[yumo_item_ceiling_tag_2]}

#接口，获取要设置的目标的item
#将tag_2设置为_tag_1
execute in yumo_cmp:yumo_cmp_load positioned 0 10 1 run data modify entity @e[tag=yumo_item_ceiling_tag_2,sort=nearest,limit=1] Item set from entity @s Item

#设置成一个物品
data modify entity @e[tag=yumo_item_ceiling_tag_2,sort=nearest,limit=1] Item.count set value 1b

#验收漏斗
#kill @s
schedule function yumo_isk:item_ceiling/3 12t replace