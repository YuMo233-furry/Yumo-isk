#检测是不是收纳袋
execute if data entity @s Inventory[{Slot:9b}].components.minecraft:custom_data.YuMoIsk run function yumo_isk:bundle/no_have/10
execute if data entity @s Inventory[{Slot:9b}].components.minecraft:custom_data.YuMoIsk run return 0
execute if score execute yumo.isk.bundle_stack matches 1 run return 0

    #获取玩家对应格子物品的数量
    data modify storage yumo_isk Item set from entity @s Inventory[{Slot:9b}]
    data remove storage yumo_isk Item.Slot

    #前置条件
    execute store result score yes yumo.isk.bundle_stack run function yumo_isk:bundle/no_have/stack
    #say 999
    #条件判断
    execute unless score yes yumo.isk.bundle_stack matches 1 run function yumo_isk:bundle/no_have/10
    execute unless score yes yumo.isk.bundle_stack matches 1 run return 0
    execute if score execute yumo.isk.bundle_stack matches 1 run return 0
        ##存储初始化
        function yumo_isk:bundle/stack/clear

        #传入物品和数量
        execute in yumo_cmp:yumo_cmp_load run data modify block 0 10 0 Items[{Slot:0b}] merge from storage yumo_isk Item
        execute store result score add yumo.isk.bundle_stack run data get storage yumo_isk Item.count

        #音效
        execute at @s run playsound minecraft:item.bundle.insert player @a ~ ~ ~
        execute at @s run particle minecraft:dust_plume ~ ~ ~ 0.2 0 0.2 0 25

        ##执行
        function yumo_isk:bundle/stack/1

        #传回到背包
        execute in yumo_cmp:yumo_cmp_load run item replace entity @s container.9 from block 1 10 0 container.0

scoreboard players set execute yumo.isk.bundle_stack 1
