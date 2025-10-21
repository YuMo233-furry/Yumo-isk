execute unless data entity @s Inventory[{Slot:31b}].tag.YuMoIsk run function yumo_isk:bundle/have/32
execute unless data entity @s Inventory[{Slot:31b}].tag.YuMoIsk run return 0
execute if score execute yumo.isk.bundle_stack matches 1 run return 0
execute store result score Inventory yumo.isk.bundle_stack run data get entity @s Inventory[{Slot:31b}].tag.YuMoIsk
execute if score Inventory yumo.isk.bundle_stack matches 64.. run function yumo_isk:bundle/have/32
execute if score Inventory yumo.isk.bundle_stack matches 64.. run return 0
execute if score execute yumo.isk.bundle_stack matches 1 run return 0
tag @e remove yumo_item_bundle_tag
execute as @e[type=minecraft:item,distance=..2.5,tag=yumo_item_ceiling_tag_over,scores={yumo.isk.item_ceiling=1..63}] run function yumo_isk:bundle/have/item_stack
execute unless entity @e[tag=yumo_item_bundle_tag] run function yumo_isk:bundle/have/32
execute unless entity @e[tag=yumo_item_bundle_tag] run return 0
execute if score execute yumo.isk.bundle_stack matches 1 run return 0
function yumo_isk:bundle/stack/clear
execute in yumo_cmp:yumo_cmp_load run data modify block 1 10 0 Items[{Slot:0b}].tag set from entity @s Inventory[{Slot:31b}].tag
tag @e[limit=1,tag=yumo_item_bundle_tag] add yumo_item_bundle_tag_1
execute at @s run playsound minecraft:item.bundle.insert player @a ~ ~ ~
execute at @e[tag=yumo_item_bundle_tag_1] run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0.2 0.1 0.2 1 50
execute as @e[limit=1,tag=yumo_item_bundle_tag_1] in yumo_cmp:yumo_cmp_load run function yumo_isk:bundle/have/item_pick_up
function yumo_isk:bundle/stack/1
tag @e remove yumo_item_bundle_tag_1
execute in yumo_cmp:yumo_cmp_load run item replace entity @s container.31 from block 1 10 0 container.0
scoreboard players set execute yumo.isk.bundle_stack 1

















