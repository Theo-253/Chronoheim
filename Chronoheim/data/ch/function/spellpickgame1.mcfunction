execute if score character# slot3 matches 1.. run execute if score Spell_Points Spell_Points matches ..-1 run scoreboard players set Spell_Points Spell_Points_P1 7
execute if score character# slot6 matches 1.. run execute if score Spell_Points Spell_Points matches ..-1 run scoreboard players set Spell_Points Spell_Points_P2 7

execute if score character# slot1 matches 0 run execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:hero_of_the_village":{amplifier:{min:1,max:1}}}}} run say Speed!