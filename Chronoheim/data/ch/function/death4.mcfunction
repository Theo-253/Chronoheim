scoreboard players remove alivep1 deaths 1
execute if score character# slot1 matches 28 run scoreboard players set cooldown slot1 0
execute if score character# slot2 matches 28 run scoreboard players set cooldown slot2 0
execute if score character# slot3 matches 28 run scoreboard players set cooldown slot3 0
execute if score character# slot5 matches 28 run scoreboard players set cooldown slot5 0
execute if score character# slot6 matches 28 run scoreboard players set cooldown slot6 0
execute if score character# slot7 matches 28 run scoreboard players set cooldown slot7 0
scoreboard players set durationSlot4 taunt 0
execute unless score character# slot4 matches 0 if score slot4 hp matches ..0 run scoreboard players set speed slot4 -1000000
execute unless score character# slot4 matches 0 run w @p[tag=p1] Slot 4 has died!
execute unless score character# slot4 matches 0 run w @p[tag=p2] Slot 4 has died!