tag @s add yumo_item_bundle_tag

#获取掉落物实体的物品数量
execute store result score count_1 yumo.isk.bundle_stack run data get entity @s Item.count

#（物品数量x占地大小）计算物品占的位置
scoreboard players operation count_1 yumo.isk.bundle_stack *= @s yumo.isk.item_ceiling

#（实际占地+收纳袋已有物品）计算完全存入会占多少空间
scoreboard players operation count_1 yumo.isk.bundle_stack += Inventory yumo.isk.bundle_stack
    

#物品实际数量
execute store result score @s yumo.isk.bundle_stack.item_64 run data get entity @s Item.count


##超过
#没超过直接夹断
execute if score count_1 yumo.isk.bundle_stack matches ..64 run return 0
    #算出能存入多少
    scoreboard players set 64 yumo.isk.bundle_stack 64

    #等比例压缩
    #堆叠上限
    scoreboard players operation 64 yumo.isk.bundle_stack /= @s yumo.isk.item_ceiling
    #收纳袋物品
    scoreboard players operation Inventory yumo.isk.bundle_stack /= @s yumo.isk.item_ceiling
        
    #获取掉落物实体的物品数量（物品实际数量，不是占地大小）
    execute store result score count_1 yumo.isk.bundle_stack run data get entity @s Item.count
    #（物品数量+收纳袋等比例占用数量）计算完全存入会占多少空间
    scoreboard players operation count_1 yumo.isk.bundle_stack += Inventory yumo.isk.bundle_stack
    scoreboard players operation count_1 yumo.isk.bundle_stack -= 64 yumo.isk.bundle_stack
    scoreboard players operation @s yumo.isk.bundle_stack.item_64 -= count_1 yumo.isk.bundle_stack