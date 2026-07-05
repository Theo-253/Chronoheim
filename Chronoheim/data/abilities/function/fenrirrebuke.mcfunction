execute if score fenrirattack saves matches 1 run execute if score character# slot1 matches 41 run scoreboard players operation fenrirhpsave saves = slot1 hp
execute if score fenrirattack saves matches 1 run execute if score character# slot2 matches 41 run scoreboard players operation fenrirhpsave saves = slot2 hp
execute if score fenrirattack saves matches 1 run execute if score character# slot3 matches 41 run scoreboard players operation fenrirhpsave saves = slot3 hp
execute if score fenrirattack saves matches 2 run execute if score character# slot5 matches 41 run scoreboard players operation fenrirhpsave2 saves = slot5 hp
execute if score fenrirattack saves matches 2 run execute if score character# slot6 matches 41 run scoreboard players operation fenrirhpsave2 saves = slot6 hp
execute if score fenrirattack saves matches 2 run execute if score character# slot7 matches 41 run scoreboard players operation fenrirhpsave2 saves = slot7 hp

execute if score fenrirattack saves matches 1 if score curse slot5 matches 3 run function abilities:fenrirattackslot5
execute if score fenrirattack saves matches 1 if score curse slot6 matches 3 run function abilities:fenrirattackslot6
execute if score fenrirattack saves matches 1 if score curse slot7 matches 3 run function abilities:fenrirattackslot7
execute if score fenrirattack saves matches 1 if score curse slot8 matches 3 run function abilities:fenrirattackslot8

execute if score fenrirattack saves matches 2 if score curse slot1 matches 3 run function abilities:fenrirattackslot1
execute if score fenrirattack saves matches 2 if score curse slot2 matches 3 run function abilities:fenrirattackslot2
execute if score fenrirattack saves matches 2 if score curse slot3 matches 3 run function abilities:fenrirattackslot3
execute if score fenrirattack saves matches 2 if score curse slot4 matches 3 run function abilities:fenrirattackslot4

scoreboard players set fenrirattack saves 0