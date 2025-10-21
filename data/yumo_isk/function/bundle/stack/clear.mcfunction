#初始化
execute in yumo_cmp:yumo_cmp_load run data remove block 0 10 0 Items
execute in yumo_cmp:yumo_cmp_load run data remove block 1 10 0 Items

execute in yumo_cmp:yumo_cmp_load run data modify block 0 10 0 Items[] set value {count:1,Slot:0b,id:"minecraft:stone"}
execute in yumo_cmp:yumo_cmp_load run data modify block 1 10 0 Items[] set value {count:1,Slot:0b,id:"minecraft:bundle",components:{custom_data:{"YuMoIsk":0},item_name:'{translate:"yumo_isk.bundle"}'}}