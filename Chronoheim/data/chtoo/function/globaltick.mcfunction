
#game 2
execute if score game2Ongoing ongoinggames matches 1 run function chtoo:game2
execute if score game2Ongoing ongoinggames matches 0 if score game2start ongoinggames matches 1 run function chtoo:draftgame2
execute if score game2start ongoinggames matches 1 if score game2Ongoing ongoinggames matches 0 run execute if score character# slot15 matches 1.. run execute if score character# slot11 matches 1.. run function chtoo:spellpickp3
execute if score game2start ongoinggames matches 1 if score game2Ongoing ongoinggames matches 0 run execute if score character# slot15 matches 1.. run execute if score character# slot11 matches 1.. run function chtoo:spellpickp4
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:0,max:0}}}}} run scoreboard players set Spell_Points_P3 Spell_Points 0
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:0,max:0}}}}} run scoreboard players set Spell_Points_P4 Spell_Points 0
execute as @a[tag=p3] run execute as @a[tag=p4] if score game2start ongoinggames matches 0 run place template minecraft:game2heroes -178 125 -84
execute as @a[tag=p3] run execute as @a[tag=p4] if score game2start ongoinggames matches 0 run place template minecraft:game2heroes -174 125 -95
execute as @a[tag=p3] run execute as @a[tag=p4] if score game2start ongoinggames matches 0 run scoreboard players set game2start ongoinggames 1


