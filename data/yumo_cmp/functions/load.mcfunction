execute in yumo_cmp:yumo_cmp_load run forceload add 0 0 0 0
execute in yumo_cmp:yumo_cmp_load run setblock 0 10 0 minecraft:barrel[facing=up,open=false]{Items:[]}
execute in yumo_cmp:yumo_cmp_load run setblock 1 10 0 minecraft:barrel[facing=up,open=false]{Items:[]}

#漏斗
execute in yumo_cmp:yumo_cmp_load run setblock 0 10 1 minecraft:hopper[enabled=true,facing=down]{Items:[],TransferCooldown:0}

#运算处理区块