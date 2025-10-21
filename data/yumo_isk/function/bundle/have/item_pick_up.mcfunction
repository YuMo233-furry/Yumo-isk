#设置物品
data modify block 0 10 0 Items[{Slot:0b}] merge from entity @s Item

    #乘以自己占地空间得到物品数量
    scoreboard players operation @s yumo.isk.bundle_stack.item_64 *= @s yumo.isk.item_ceiling
        #收纳袋传入大小
        scoreboard players operation add yumo.isk.bundle_stack = @s yumo.isk.bundle_stack.item_64


    #除回来
    scoreboard players operation @s yumo.isk.bundle_stack.item_64 /= @s yumo.isk.item_ceiling
        
        #设置物品数量
        execute store result block 0 10 0 Items[{Slot:0b}].count byte 1 run scoreboard players get @s yumo.isk.bundle_stack.item_64
        
        #物品实体自身减少数量(变成0自己就消失了，1.21.1不会自己消失了我无语)
        execute store result score count yumo.isk.bundle_stack run data get entity @s Item.count
        #NBT
        execute store result entity @s Item.count byte 1 run scoreboard players operation count yumo.isk.bundle_stack -= @s yumo.isk.bundle_stack.item_64



#清理计分板外加自己
execute unless score count yumo.isk.bundle_stack matches ..0 run return 0
scoreboard players reset @s yumo.isk.bundle_stack.item_64
scoreboard players reset @s yumo.isk.item_ceiling
kill @s