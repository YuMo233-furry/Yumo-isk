#袋子清理
execute as @e[type=item] if data entity @s Item.tag.YuMoIsk unless data entity @s Item.tag.Items run kill @s

execute as @a at @s if data entity @s SelectedItem.tag.YuMoIsk unless data entity @s SelectedItem.tag.Items run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0.2 0.1 0.2 1 50
execute as @a if data entity @s SelectedItem.tag.YuMoIsk unless data entity @s SelectedItem.tag.Items run item replace entity @s weapon.mainhand with air

schedule function yumo_isk:clear/load 1t replace