#检测是不是收纳袋
execute unless data entity @s Inventory[{Slot:0b}].components.minecraft:custom_data.YuMoIsk run function yumo_isk:bundle/have/1
execute unless data entity @s Inventory[{Slot:0b}].components.minecraft:custom_data.YuMoIsk run return 0
execute if score execute yumo.isk.bundle_stack matches 1 run return 0
    #获取物品数量
    execute store result score Inventory yumo.isk.bundle_stack run data get entity @s Inventory[{Slot:0b}].components.minecraft:custom_data.YuMoIsk

    #检测
    execute if score Inventory yumo.isk.bundle_stack matches 64.. run function yumo_isk:bundle/have/1
    execute if score Inventory yumo.isk.bundle_stack matches 64.. run return 0
    execute if score execute yumo.isk.bundle_stack matches 1 run return 0
        #检测符合条件的物品实体
        tag @e remove yumo_item_bundle_tag
        execute as @e[type=minecraft:item,distance=..2.5,tag=yumo_item_ceiling_tag_over,scores={yumo.isk.item_ceiling=1..63}] run function yumo_isk:bundle/have/item_stack

        #有没有符合条件的
        execute unless entity @e[tag=yumo_item_bundle_tag] run function yumo_isk:bundle/have/1
        execute unless entity @e[tag=yumo_item_bundle_tag] run return 0
        execute if score execute yumo.isk.bundle_stack matches 1 run return 0
            ##初始化
            function yumo_isk:bundle/stack/clear

            #传入收纳袋
            execute in yumo_cmp:yumo_cmp_load run data modify block 1 10 0 Items[{Slot:0b}].components set from entity @s Inventory[{Slot:0b}].components
            
            #传入物品
            tag @e[limit=1,tag=yumo_item_bundle_tag] add yumo_item_bundle_tag_1

            #音效
            execute at @s run playsound minecraft:item.bundle.insert player @a ~ ~ ~
            execute at @e[tag=yumo_item_bundle_tag_1] run particle minecraft:dust_plume ~ ~ ~ 0.2 0 0.2 0 25

            execute as @e[limit=1,tag=yumo_item_bundle_tag_1] in yumo_cmp:yumo_cmp_load run function yumo_isk:bundle/have/item_pick_up

            
            #开始
            function yumo_isk:bundle/stack/1
            tag @e remove yumo_item_bundle_tag_1
            #传回玩家
            execute in yumo_cmp:yumo_cmp_load run item replace entity @s container.0 from block 1 10 0 container.0

scoreboard players set execute yumo.isk.bundle_stack 1


















