scoreboard players remove alivep1 deaths 1
execute if score character# slot1 matches 28 run scoreboard players set cooldown slot1 0
execute if score character# slot2 matches 28 run scoreboard players set cooldown slot2 0
execute if score character# slot3 matches 28 run scoreboard players set cooldown slot3 0
execute if score character# slot5 matches 28 run scoreboard players set cooldown slot5 0
execute if score character# slot6 matches 28 run scoreboard players set cooldown slot6 0
execute if score character# slot7 matches 28 run scoreboard players set cooldown slot7 0
scoreboard players set durationSlot1 taunt 0
execute if score slot1 hp matches ..0 run scoreboard players set speed slot1 -1000000
tellraw @a[tag=game1] ["Slot 1 has died"]
execute at @e[name=slot1,type=armor_stand] run kill @e[name=!slot1,type=!player,distance=..4]

