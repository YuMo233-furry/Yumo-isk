#初始化
execute in yumo_cmp:yumo_cmp_load run data remove block 0 10 0 Items
execute in yumo_cmp:yumo_cmp_load run data remove block 1 10 0 Items

execute in yumo_cmp:yumo_cmp_load run data modify block 0 10 0 Items[] set value {Count:1b,Slot:0b,id:"minecraft:stone"}
execute in yumo_cmp:yumo_cmp_load run data modify block 1 10 0 Items[] set value {Count:1b,Slot:0b,id:"minecraft:bundle",tag:{YuMoIsk:0,display:{Name:'{"translate":"yumo_isk.bundle"}'}}}