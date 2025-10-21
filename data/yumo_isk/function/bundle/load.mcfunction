#检测是否满背包
scoreboard objectives add yumo.isk.player_backpack dummy "玩家背包情况"
scoreboard objectives add yumo.isk.player_backpack.max dummy "玩家背包状态"
schedule function yumo_isk:bundle/player_backpack/player_backpack 25t replace

#玩家捡东西
scoreboard objectives add yumo.isk.item.PickupDelay dummy "物品拾取延迟"
scoreboard objectives add yumo.isk.bundle_stack dummy "收纳袋堆叠"
scoreboard objectives add yumo.isk.bundle_stack.item_64 dummy "存入多少？"
schedule function yumo_isk:bundle/1 1t replace