effect clear @a[tag=game1] strength
execute if score abilitynumber abilitynumber matches 1 run say yo 




#This goes at the bottom
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
function ch:turnend
#Make sure to add burn to your abilities
