#attack initiation check
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function ch:basicattackstartp1
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function ch:basicattackstartp2

#attack targeting check (slot 1)
execute if score ward slot1 matches 0 run execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function ch:basicattacks1
execute if score ward slot1 matches 1.. run execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function ch:ward
effect clear @a minecraft:conduit_power

#Speed Reset
execute if score attackIsOngoingGame1 booleans matches 0 run execute if score speed slot6 matches ..-10000 run execute if score speed slot5 matches ..-10000 run execute if score speed slot4 matches ..-10000 run execute if score speed slot3 matches ..-10000 run execute if score speed slot2 matches ..-10000 run execute if score speed slot1 matches ..-10000 run execute if score character# slot1 matches 1.. run scoreboard players set attackIsOngoingGame1 booleans 1
execute if score attackIsOngoingGame1 booleans matches 0 run execute if score speed slot6 matches ..-10000 run execute if score speed slot5 matches ..-10000 run execute if score speed slot4 matches ..-10000 run execute if score speed slot3 matches ..-10000 run execute if score speed slot2 matches ..-10000 run execute if score speed slot1 matches ..-10000 run execute if score character# slot1 matches 1.. run function ch:turnresetgame1
