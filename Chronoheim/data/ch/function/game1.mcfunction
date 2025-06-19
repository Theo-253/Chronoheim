#drafting
function ch:draftgame1
#game start check
execute if score sP player1spells matches 0 run execute if score sP player2spells matches 0 run execute if score game1Ongoing ongoinggames matches 0 if score character# slot1 matches 1.. run execute if score character# slot2 matches 1.. run execute if score character# slot3 matches 1.. run execute if score character# slot4 matches 1.. run execute if score character# slot5 matches 1.. run execute if score character# slot6 matches 1.. run scoreboard players set attackIsOngoingGame1 booleans 1
execute if score sP player1spells matches 0 run execute if score sP player2spells matches 0 run execute if score game1Ongoing ongoinggames matches 0 if score character# slot1 matches 1.. run execute if score character# slot2 matches 1.. run execute if score character# slot3 matches 1.. run execute if score character# slot4 matches 1.. run execute if score character# slot5 matches 1.. run execute if score character# slot6 matches 1.. run function ch:game1start

#attack initiation check
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function ch:basicattackstartp1
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function ch:basicattackstartp2

#attack targeting check
execute if score ward slot1 matches 0 run execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function ch:basicattacks1
execute if score ward slot1 matches 1.. run execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function ch:ward
execute if score ward slot2 matches 0 run execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function ch:basicattacks2
execute if score ward slot2 matches 1.. run execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function ch:ward
execute if score ward slot3 matches 0 run execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function ch:basicattacks3
execute if score ward slot3 matches 1.. run execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function ch:ward
execute if score ward slot4 matches 0 run execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function ch:basicattacks4
execute if score ward slot4 matches 1.. run execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function ch:ward
execute if score ward slot5 matches 0 run execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function ch:basicattacks5
execute if score ward slot5 matches 1.. run execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function ch:ward
execute if score ward slot6 matches 0 run execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function ch:basicattacks6
execute if score ward slot6 matches 1.. run execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function ch:ward
execute if score ward slot7 matches 0 run execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function ch:basicattacks7
execute if score ward slot7 matches 1.. run execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function ch:ward
execute if score ward slot8 matches 0 run execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function ch:basicattacks8
execute if score ward slot8 matches 1.. run execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function ch:ward
effect clear @a minecraft:conduit_power

function ch:abilitytargetinggeneralgame1

function ch:speedcheckgame1
function ch:abilitychecks

#invincibility
execute if score invincibleSlot1 booleaneffects matches 1.. run scoreboard players operation slot1 hp = savehp1 saves
execute if score invincibleSlot2 booleaneffects matches 1.. run scoreboard players operation slot2 hp = savehp2 saves
execute if score invincibleSlot3 booleaneffects matches 1.. run scoreboard players operation slot3 hp = savehp3 saves
execute if score invincibleSlot5 booleaneffects matches 1.. run scoreboard players operation slot5 hp = savehp5 saves
execute if score invincibleSlot6 booleaneffects matches 1.. run scoreboard players operation slot6 hp = savehp6 saves
execute if score invincibleSlot7 booleaneffects matches 1.. run scoreboard players operation slot7 hp = savehp7 saves



#Speed Reset
execute if score attackIsOngoingGame1 booleans matches 0 run execute if score speed slot6 matches ..-10000 run execute if score speed slot5 matches ..-10000 run execute if score speed slot4 matches ..-10000 run execute if score speed slot3 matches ..-10000 run execute if score speed slot2 matches ..-10000 run execute if score speed slot1 matches ..-10000 run execute if score character# slot1 matches 1.. run scoreboard players set attackIsOngoingGame1 booleans 1
execute if score attackIsOngoingGame1 booleans matches 0 run execute if score speed slot6 matches ..-10000 run execute if score speed slot5 matches ..-10000 run execute if score speed slot4 matches ..-10000 run execute if score speed slot3 matches ..-10000 run execute if score speed slot2 matches ..-10000 run execute if score speed slot1 matches ..-10000 run execute if score character# slot1 matches 1.. run function ch:turnresetgame1

#Death
execute if score game1Ongoing ongoinggames matches 1 run execute if score slot1 hp matches ..0 run execute unless score speed slot1 matches -10000..-9000 run function ch:death1
execute if score game1Ongoing ongoinggames matches 1 run execute if score slot2 hp matches ..0 run execute unless score speed slot2 matches -10000..-9000 run function ch:death2
execute if score game1Ongoing ongoinggames matches 1 run execute if score slot3 hp matches ..0 run execute unless score speed slot3 matches -10000..-9000 run function ch:death3
execute if score game1Ongoing ongoinggames matches 1 run execute if score slot4 hp matches ..0 run execute unless score speed slot4 matches -10000..-9000 run function ch:death4
execute if score game1Ongoing ongoinggames matches 1 run execute if score slot5 hp matches ..0 run execute unless score speed slot5 matches -10000..-9000 run function ch:death5
execute if score game1Ongoing ongoinggames matches 1 run execute if score slot6 hp matches ..0 run execute unless score speed slot6 matches -10000..-9000 run function ch:death6
execute if score game1Ongoing ongoinggames matches 1 run execute if score slot7 hp matches ..0 run execute unless score speed slot7 matches -10000..-9000 run function ch:death7
execute if score game1Ongoing ongoinggames matches 1 run execute if score slot8 hp matches ..0 run execute unless score speed slot8 matches -10000..-9000 run function ch:death8

#When I get elected, we will have so much winning
execute if score alivep1 deaths matches 0 run function ch:win
execute if score alivep1 deaths matches 0 run say @a @p[tag=p2] has won the duel against @p[tag=p1]!
execute if score alivep2 deaths matches 0 run function ch:win
execute if score alivep2 deaths matches 0 run say @a @p[tag=p1] has won the duel against @p[tag=p2]!