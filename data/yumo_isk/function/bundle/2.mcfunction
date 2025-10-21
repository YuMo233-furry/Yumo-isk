#是否创建新袋子
scoreboard players set add_bundle yumo.isk.bundle_stack 1
execute if data entity @s Inventory[].components.minecraft:custom_data.YuMoIsk run scoreboard players set add_bundle yumo.isk.bundle_stack 0

    ##先遍历已有袋子
    scoreboard players set execute yumo.isk.bundle_stack 0
    execute if score add_bundle yumo.isk.bundle_stack matches 0 run function yumo_isk:bundle/have/0

    #夹断
    execute if score add_bundle yumo.isk.bundle_stack matches 0 run return 0

    ##创建新袋子
    scoreboard players set execute yumo.isk.bundle_stack 0
    function yumo_isk:bundle/no_have/9