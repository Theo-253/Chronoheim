execute if score game1Ongoing ongoinggames matches 1 run function ch:game1
function ch:effectclear
execute if score game1Ongoing ongoinggames matches 0 if score game1start ongoinggames matches 1 run function ch:draftgame1
execute if score game1start ongoinggames matches 1 if score game1Ongoing ongoinggames matches 0 run execute if score character# slot7 matches 1.. run execute if score character# slot3 matches 1.. run function ch:spellpickp1
execute if score game1start ongoinggames matches 1 if score game1Ongoing ongoinggames matches 0 run execute if score character# slot7 matches 1.. run execute if score character# slot3 matches 1.. run function ch:spellpickp2
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:0,max:0}}}}} run scoreboard players set Spell_Points_P1 Spell_Points 0
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:0,max:0}}}}} run scoreboard players set Spell_Points_P2 Spell_Points 0
execute as @a[tag=p1] run execute as @a[tag=p2] if score game1start ongoinggames matches 0 run place template minecraft:game1heroes1 -178 127 -98
execute as @a[tag=p1] run execute as @a[tag=p2] if score game1start ongoinggames matches 0 run place template minecraft:game1heroes2 -180 126 -100
execute as @a[tag=p1] run execute as @a[tag=p2] if score game1start ongoinggames matches 0 run place template minecraft:game1heroes1 -173 127 -109
execute as @a[tag=p1] run execute as @a[tag=p2] if score game1start ongoinggames matches 0 run place template minecraft:game1heroes2 -171 126 -107
execute as @a[tag=p1] run execute as @a[tag=p2] if score game1start ongoinggames matches 0 run scoreboard players set game1start ongoinggames 1

function ch:maxhp
function ch:effectparticles
function ui:ui
function ui:characterui
function ui:scoreboardui

#game 2
execute if score game2Ongoing ongoinggames matches 1 run function chtoo:game2
execute if score game2Ongoing ongoinggames matches 0 if score game2start ongoinggames matches 1 run function chtoo:draftgame2
execute if score game2start ongoinggames matches 1 if score game2Ongoing ongoinggames matches 0 run execute if score character# slot15 matches 1.. run execute if score character# slot11 matches 1.. run function chtoo:spellpickp3
execute if score game2start ongoinggames matches 1 if score game2Ongoing ongoinggames matches 0 run execute if score character# slot15 matches 1.. run execute if score character# slot11 matches 1.. run function chtoo:spellpickp4
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:0,max:0}}}}} run scoreboard players set Spell_Points_P1 Spell_Points 0
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:0,max:0}}}}} run scoreboard players set Spell_Points_P2 Spell_Points 0
execute as @a[tag=p3] run execute as @a[tag=p4] if score game2start ongoinggames matches 0 run place template minecraft:game2heroes -178 125 -84
execute as @a[tag=p3] run execute as @a[tag=p4] if score game2start ongoinggames matches 0 run place template minecraft:game2heroes -174 125 -95
execute as @a[tag=p3] run execute as @a[tag=p4] if score game2start ongoinggames matches 0 run scoreboard players set game2start ongoinggames 1

function chtoo:effectparticles
function uitoo:ui
function uitoo:characterui
function uitoo:scoreboardui

#game 3
execute if score game3Ongoing ongoinggames matches 1 run function chthree:game3
execute if score game3Ongoing ongoinggames matches 0 if score game3start ongoinggames matches 1 run function chthree:draftgame3
execute if score game3start ongoinggames matches 1 if score game3Ongoing ongoinggames matches 0 run execute if score character# slot23 matches 1.. run execute if score character# slot19 matches 1.. run function chthree:spellpickp5
execute if score game3start ongoinggames matches 1 if score game3Ongoing ongoinggames matches 0 run execute if score character# slot23 matches 1.. run execute if score character# slot19 matches 1.. run function chthree:spellpickp6
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:0,max:0}}}}} run scoreboard players set Spell_Points_P3 Spell_Points 0
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:0,max:0}}}}} run scoreboard players set Spell_Points_P4 Spell_Points 0
execute as @a[tag=p5] run execute as @a[tag=p6] if score game3start ongoinggames matches 0 run place template minecraft:game3heroes -178 127 -98
execute as @a[tag=p5] run execute as @a[tag=p6] if score game3start ongoinggames matches 0 run place template minecraft:game3heroes -180 126 -100
execute as @a[tag=p5] run execute as @a[tag=p6] if score game3start ongoinggames matches 0 run scoreboard players set game3start ongoinggames 1


function chthree:effectparticles
function uithree:ui
function uithree:characterui
function uithree:scoreboardui