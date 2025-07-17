
#game 2
execute if score game3Ongoing ongoinggames matches 1 run function chthree:game3
execute if score game3Ongoing ongoinggames matches 0 if score game3start ongoinggames matches 1 run function chthree:draftgame3
execute if score game3start ongoinggames matches 1 if score game3Ongoing ongoinggames matches 0 run execute if score character# slot23 matches 1.. run execute if score character# slot19 matches 1.. run function chthree:spellpickp5
execute if score game3start ongoinggames matches 1 if score game3Ongoing ongoinggames matches 0 run execute if score character# slot23 matches 1.. run execute if score character# slot19 matches 1.. run function chthree:spellpickp6
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:0,max:0}}}}} run scoreboard players set Spell_Points_P5 Spell_Points 0
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:0,max:0}}}}} run scoreboard players set Spell_Points_P6 Spell_Points 0
execute as @a[tag=p5] run execute as @a[tag=p6] if score game3start ongoinggames matches 0 run place template minecraft:game3heroes -180 128 -119
execute as @a[tag=p5] run execute as @a[tag=p6] if score game3start ongoinggames matches 0 run place template minecraft:game3heroes -173 128 -116
execute as @a[tag=p5] run execute as @a[tag=p6] if score game3start ongoinggames matches 0 run scoreboard players set game3start ongoinggames 1

function chthree:effectparticles
function uithree:ui
function uithree:characterui
function uithree:scoreboardui
