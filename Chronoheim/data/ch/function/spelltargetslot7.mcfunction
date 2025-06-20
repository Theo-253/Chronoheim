effect clear @a[tag=game1] strength
execute if score spellnumber spells matches 1 run say yo 




#This goes at the bottom
execute if score shield slot5 matches ..0 run scoreboard players set shield slot5 0
execute if score shield slot8 matches ..0 run scoreboard players set shield slot8 0
execute if score shield slot7 matches ..0 run scoreboard players set shield slot7 0
execute if score shield slot8 matches ..0 run scoreboard players set shield slot8 0
clear @p[tag=p2]
effect clear @p[tag=p2]
function ch:turnend