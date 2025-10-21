#变量
i = 0

#循环
for __count in range(35):
    # 打开文件并写入内容
    with open('yumo_isk/functions/bundle/have/'+str(1+i)+'.mcfunction', 'w') as file:
        file.write('execute unless data entity @s Inventory[{Slot:'+str(1+i)+'b}].tag.YuMoIsk run function yumo_isk:bundle/have/'+str(2+i)+''+'\n')
        file.write('execute unless data entity @s Inventory[{Slot:'+str(1+i)+'b}].tag.YuMoIsk run return 0'+'\n')
        file.write('execute if score execute yumo.isk.bundle_stack matches 1 run return 0'+'\n')

        file.write('execute store result score Inventory yumo.isk.bundle_stack run data get entity @s Inventory[{Slot:'+str(1+i)+'b}].tag.YuMoIsk'+'\n')

        file.write('execute if score Inventory yumo.isk.bundle_stack matches 64.. run function yumo_isk:bundle/have/'+str(2+i)+''+'\n')
        file.write('execute if score Inventory yumo.isk.bundle_stack matches 64.. run return 0'+'\n')
        file.write('execute if score execute yumo.isk.bundle_stack matches 1 run return 0'+'\n')

        file.write('tag @e remove yumo_item_bundle_tag'+'\n')
        
        file.write('execute as @e[type=minecraft:item,distance=..2.5,tag=yumo_item_ceiling_tag_over,scores={yumo.isk.item_ceiling=1..63}] run function yumo_isk:bundle/have/item_stack'+'\n')

        file.write('execute unless entity @e[tag=yumo_item_bundle_tag] run function yumo_isk:bundle/have/'+str(2+i)+''+'\n')
        file.write('execute unless entity @e[tag=yumo_item_bundle_tag] run return 0'+'\n')
        file.write('execute if score execute yumo.isk.bundle_stack matches 1 run return 0'+'\n')

        file.write('function yumo_isk:bundle/stack/clear'+'\n')

        file.write('execute in yumo_cmp:yumo_cmp_load run data modify block 1 10 0 Items[{Slot:0b}].tag set from entity @s Inventory[{Slot:'+str(1+i)+'b}].tag'+'\n')

        #传入物品

        file.write('tag @e[limit=1,tag=yumo_item_bundle_tag] add yumo_item_bundle_tag_1'+'\n')
        
        #音效
        file.write('execute at @s run playsound minecraft:item.bundle.insert player @a ~ ~ ~'+'\n')
        file.write('execute at @e[tag=yumo_item_bundle_tag_1] run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0.2 0.1 0.2 1 50'+'\n')

        file.write('execute as @e[limit=1,tag=yumo_item_bundle_tag_1] in yumo_cmp:yumo_cmp_load run function yumo_isk:bundle/have/item_pick_up'+'\n')

        file.write('function yumo_isk:bundle/stack/1'+'\n')
        file.write('tag @e remove yumo_item_bundle_tag_1'+'\n')

        #传回玩家

        file.write('execute in yumo_cmp:yumo_cmp_load run item replace entity @s container.'+str(1+i)+' from block 1 10 0 container.0'+'\n')
        
        file.write('scoreboard players set execute yumo.isk.bundle_stack 1'+'\n')

        file.write(''+'\n')

        file.write(''+'\n')

        file.write(''+'\n')

        file.write(''+'\n')
        file.write(''+'\n')
        file.write(''+'\n')
        file.write(''+'\n')
        file.write(''+'\n')
        file.write(''+'\n')
        file.write(''+'\n')
        file.write(''+'\n')
        file.write(''+'\n')
        file.write(''+'\n')
        file.write(''+'\n')
        file.write(''+'\n')
        file.write(''+'\n')
        file.write(''+'\n')
    i += 1
pass