#Player 1
execute if score slot1Bleeding booleaneffects matches 0 run scoreboard players operation slot1 hp += arthurHealing abilityStats
execute if score slot2Bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += arthurHealing abilityStats
execute if score slot3Bleeding booleaneffects matches 0 run scoreboard players operation slot3 hp += arthurHealing abilityStats
execute if score slot4Bleeding booleaneffects matches 0 run scoreboard players operation slot4 hp += arthurHealing abilityStats
scoreboard players set abilityusep1 booleans 1
execute if score character# slot1 matches 2 run scoreboard players operation cooldown slot1 = arthurCD abilityStats
execute if score character# slot2 matches 2 run scoreboard players operation cooldown slot2 = arthurCD abilityStats
execute if score character# slot3 matches 2 run scoreboard players operation cooldown slot3 = arthurCD abilityStats
function ch:cleanseslot1
function ch:cleanseslot2
function ch:cleanseslot3
function ch:cleanseslot4
scoreboard players set abilityusep1 booleans 1
function ch:turnend
effect clear @a[tag=game1] fire_resistance


#Player 2
execute if score slot5Bleeding booleaneffects matches 0 run scoreboard players operation slot5 hp += arthurHealing abilityStats
execute if score slot6Bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += arthurHealing abilityStats
execute if score slot7Bleeding booleaneffects matches 0 run scoreboard players operation slot7 hp += arthurHealing abilityStats
execute if score slot8Bleeding booleaneffects matches 0 run scoreboard players operation slot8 hp += arthurHealing abilityStats
scoreboard players set abilityusep2 booleans 1
execute if score character# slot5 matches 2 run scoreboard players operation cooldown slot5 = arthurCD abilityStats
execute if score character# slot6 matches 2 run scoreboard players operation cooldown slot6 = arthurCD abilityStats
execute if score character# slot7 matches 2 run scoreboard players operation cooldown slot7 = arthurCD abilityStats
function ch:cleanseslot5
function ch:cleanseslot6
function ch:cleanseslot7
function ch:cleanseslot8
scoreboard players set abilityusep2 booleans 1
function ch:turnend
effect clear @a[tag=game1] fire_resistance

