#多项检查
scoreboard players set yes yumo.isk.bundle_stack 1

#物品数量
execute store result score Inventory yumo.isk.bundle_stack run data get storage yumo_isk Item.count

execute if score Inventory yumo.isk.bundle_stack matches 64.. run return 0
execute at @s run summon minecraft:item
#有耐久？
execute if data storage minecraft:yumo_isk Item.components.Damage run return 0
execute at @s run summon minecraft:item
#附魔书
execute if data storage minecraft:yumo_isk Item.components.StoredEnchantments run return 0
execute at @s run summon minecraft:item
#药水
execute if data storage minecraft:yumo_isk Item.components.Potion run return 0
execute at @s run summon minecraft:item
#tag一刀切
#execute if data storage minecraft:yumo_isk Item.components run return 0
#summon minecraft:item
