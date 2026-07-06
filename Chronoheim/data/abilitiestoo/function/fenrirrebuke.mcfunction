execute if score fenrirattack saves matches 1 run execute if score character# slot9 matches 41 run scoreboard players operation fenrirhpsave saves = slot9 hp
execute if score fenrirattack saves matches 1 run execute if score character# slot10 matches 41 run scoreboard players operation fenrirhpsave saves = slot10 hp
execute if score fenrirattack saves matches 1 run execute if score character# slot11 matches 41 run scoreboard players operation fenrirhpsave saves = slot11 hp
execute if score fenrirattack saves matches 2 run execute if score character# slot13 matches 41 run scoreboard players operation fenrirhpsave2 saves = slot13 hp
execute if score fenrirattack saves matches 2 run execute if score character# slot14 matches 41 run scoreboard players operation fenrirhpsave2 saves = slot14 hp
execute if score fenrirattack saves matches 2 run execute if score character# slot15 matches 41 run scoreboard players operation fenrirhpsave2 saves = slot15 hp

execute if score character# slot9 matches 41 if score slot9 hp >= maxhp slot9 run scoreboard players set fenrircancel saves 1
execute if score character# slot10 matches 41 if score slot10 hp >= maxhp slot10 run scoreboard players set fenrircancel saves 1
execute if score character# slot11 matches 41 if score slot11 hp >= maxhp slot11 run scoreboard players set fenrircancel saves 1

execute if score character# slot13 matches 41 if score slot13 hp >= maxhp slot13 run scoreboard players set fenrircancel saves 2
execute if score character# slot14 matches 41 if score slot14 hp >= maxhp slot14 run scoreboard players set fenrircancel saves 2
execute if score character# slot15 matches 41 if score slot15 hp >= maxhp slot15 run scoreboard players set fenrircancel saves 2

execute unless score fenrircancel saves matches 1 if score fenrirattack saves matches 1 if score curse slot13 matches 3 run function abilities:fenrirattackslot13
execute unless score fenrircancel saves matches 1 if score fenrirattack saves matches 1 if score curse slot14 matches 3 run function abilities:fenrirattackslot14
execute unless score fenrircancel saves matches 1 if score fenrirattack saves matches 1 if score curse slot15 matches 3 run function abilities:fenrirattackslot15
execute unless score fenrircancel saves matches 1 if score fenrirattack saves matches 1 if score curse slot16 matches 3 run function abilities:fenrirattackslot16

execute unless score fenrircancel saves matches 2 if score fenrirattack saves matches 2 if score curse slot9 matches 3 run function abilities:fenrirattackslot9
execute unless score fenrircancel saves matches 2 if score fenrirattack saves matches 2 if score curse slot10 matches 3 run function abilities:fenrirattackslot10
execute unless score fenrircancel saves matches 2 if score fenrirattack saves matches 2 if score curse slot11 matches 3 run function abilities:fenrirattackslot11
execute unless score fenrircancel saves matches 2 if score fenrirattack saves matches 2 if score curse slot12 matches 3 run function abilities:fenrirattackslot12

scoreboard players set fenrircancel saves 0