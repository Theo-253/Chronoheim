execute if score game1Ongoing ongoinggames matches 1 run function ch:game1
function ch:effectclear
execute if score game1Ongoing ongoinggames matches 0 if score game1start ongoinggames matches 1 run function ch:draftgame1
execute if score game1start ongoinggames matches 1 if score game1Ongoing ongoinggames matches 0 run execute if score character# slot7 matches 1.. run execute if score character# slot3 matches 1.. run function ch:spellpickgame1
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:0,max:0}}}}} run scoreboard players set Spell_Points_P1 Spell_Points 0
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:0,max:0}}}}} run scoreboard players set Spell_Points_P2 Spell_Points 0
execute as @a[tag=p1] run execute as @a[tag=p2] if score game1start ongoinggames matches 0 run scoreboard players set game1start ongoinggames 1
