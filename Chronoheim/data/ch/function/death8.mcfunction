scoreboard players remove alivep2 deaths 1
execute if score character# slot1 matches 28 run scoreboard players set cooldown slot1 0
execute if score character# slot2 matches 28 run scoreboard players set cooldown slot2 0
execute if score character# slot3 matches 28 run scoreboard players set cooldown slot3 0
execute if score character# slot5 matches 28 run scoreboard players set cooldown slot5 0
execute if score character# slot6 matches 28 run scoreboard players set cooldown slot6 0
execute if score character# slot7 matches 28 run scoreboard players set cooldown slot7 0
execute unless score character# slot8 matches 0 if score slot8 hp matches ..0 run scoreboard players set speed slot8 -1000000
scoreboard players set durationSlot8 taunt 0
execute unless score character# slot8 matches 0 run tellraw @a[tag=game1] ["Slot 8 has died"]
execute at @e[name=slot8,type=armor_stand] run kill @e[name=!slot8,type=!player,distance=..4]