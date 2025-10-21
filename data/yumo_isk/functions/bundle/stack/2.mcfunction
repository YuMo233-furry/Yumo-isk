#传入的物品 叠在收纳袋开头
data modify block 1 10 0 Items[{Slot:0b}].tag.Items prepend from block 0 10 0 Items[{Slot:0b}]

#传入的数值 添加到已经堆叠物品的数量
execute store result score bundle_stack yumo.isk.bundle_stack run data get block 1 10 0 Items[{Slot:0b}].tag.YuMoIsk
#相加
execute store result block 1 10 0 Items[{Slot:0b}].tag.YuMoIsk int 1 run scoreboard players operation bundle_stack yumo.isk.bundle_stack += add yumo.isk.bundle_stack

execute if score bundle_stack yumo.isk.bundle_stack matches 64.. run data modify block 1 10 0 Items[{Slot:0b}].tag.display.Lore prepend value '{"color":"gray","translate":"yumo_isk.bundle_text"}'