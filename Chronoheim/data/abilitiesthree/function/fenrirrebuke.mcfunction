
execute if score fenrirattack saves matches 1 run execute if score character# slot17 matches 41 run scoreboard players operation fenrirhpsave saves = slot17 hp
execute if score fenrirattack saves matches 1 run execute if score character# slot18 matches 41 run scoreboard players operation fenrirhpsave saves = slot18 hp
execute if score fenrirattack saves matches 1 run execute if score character# slot19 matches 41 run scoreboard players operation fenrirhpsave saves = slot19 hp
execute if score fenrirattack saves matches 2 run execute if score character# slot21 matches 41 run scoreboard players operation fenrirhpsave2 saves = slot21 hp
execute if score fenrirattack saves matches 2 run execute if score character# slot22 matches 41 run scoreboard players operation fenrirhpsave2 saves = slot22 hp
execute if score fenrirattack saves matches 2 run execute if score character# slot23 matches 41 run scoreboard players operation fenrirhpsave2 saves = slot23 hp

execute if score character# slot17 matches 41 if score slot17 hp >= maxhp slot17 run scoreboard players set fenrircancel saves 1
execute if score character# slot18 matches 41 if score slot18 hp >= maxhp slot18 run scoreboard players set fenrircancel saves 1
execute if score character# slot19 matches 41 if score slot19 hp >= maxhp slot19 run scoreboard players set fenrircancel saves 1

execute if score character# slot21 matches 41 if score slot21 hp >= maxhp slot21 run scoreboard players set fenrircancel saves 2
execute if score character# slot22 matches 41 if score slot22 hp >= maxhp slot22 run scoreboard players set fenrircancel saves 2
execute if score character# slot23 matches 41 if score slot23 hp >= maxhp slot23 run scoreboard players set fenrircancel saves 2

execute unless score fenrircancel saves matches 1 if score fenrirattack saves matches 1 if score curse slot21 matches 3 run function abilities:fenrirattackslot21
execute unless score fenrircancel saves matches 1 if score fenrirattack saves matches 1 if score curse slot22 matches 3 run function abilities:fenrirattackslot22
execute unless score fenrircancel saves matches 1 if score fenrirattack saves matches 1 if score curse slot23 matches 3 run function abilities:fenrirattackslot23
execute unless score fenrircancel saves matches 1 if score fenrirattack saves matches 1 if score curse slot24 matches 3 run function abilities:fenrirattackslot24

execute unless score fenrircancel saves matches 2 if score fenrirattack saves matches 2 if score curse slot17 matches 3 run function abilities:fenrirattackslot17
execute unless score fenrircancel saves matches 2 if score fenrirattack saves matches 2 if score curse slot18 matches 3 run function abilities:fenrirattackslot18
execute unless score fenrircancel saves matches 2 if score fenrirattack saves matches 2 if score curse slot19 matches 3 run function abilities:fenrirattackslot19
execute unless score fenrircancel saves matches 2 if score fenrirattack saves matches 2 if score curse slot20 matches 3 run function abilities:fenrirattackslot20

scoreboard players set fenrircancel saves 0