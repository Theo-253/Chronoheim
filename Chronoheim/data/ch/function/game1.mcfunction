#attack initiation check
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function ch:basicattackstartp1
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function ch:basicattackstartp2

#attack targeting check
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function ch:basicattacks1
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function ch:basicattacks2
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function ch:basicattacks3
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function ch:basicattacks4
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function ch:basicattacks5
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function ch:basicattacks6
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function ch:basicattacks7
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function ch:basicattacks8
effect clear @a[tag=game1] minecraft:conduit_power

function ch:spelltargetinggeneralgame1
function ch:abilitytargetinggeneralgame1
function ch:atkmodifiers
function ch:speedcheckgame1
function ch:abilitychecks
function ch:spellchecks

#boogaloo curse
execute if score curse slot1 matches 1 if score durationSlot1 regen matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot1 matches 1 if score durationSlot1 regen matches 1.. run scoreboard players set durationSlot1 regen 0
execute if score curse slot1 matches 1 if score durationSlot1 taunt matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot1 matches 1 if score durationSlot1 taunt matches 1.. run scoreboard players set durationSlot1 taunt 0
execute if score curse slot1 matches 1 if score shield slot1 matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot1 matches 1 if score shield slot1 matches 1.. run scoreboard players set shield slot1 0
execute if score curse slot1 matches 1 if score ward slot1 matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot1 matches 1 if score ward slot1 matches 1.. run scoreboard players set ward slot1 0
execute if score curse slot1 matches 1 if score boogalooCurse abilities matches 1.. at @e[name=slot1,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot1 matches 1 if score boogalooCurse abilities matches 1.. run scoreboard players set curse slot1 0
execute if score boogalooCurse abilities matches 1.. run scoreboard players set boogalooCurse abilities 0
execute if score curse slot2 matches 1 if score durationSlot2 regen matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot2 matches 1 if score durationSlot2 regen matches 1.. run scoreboard players set durationSlot2 regen 0
execute if score curse slot2 matches 1 if score durationSlot2 taunt matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot2 matches 1 if score durationSlot2 taunt matches 1.. run scoreboard players set durationSlot2 taunt 0
execute if score curse slot2 matches 1 if score shield slot2 matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot2 matches 1 if score shield slot2 matches 1.. run scoreboard players set shield slot2 0
execute if score curse slot2 matches 1 if score ward slot2 matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot2 matches 1 if score ward slot2 matches 1.. run scoreboard players set ward slot2 0
execute if score curse slot2 matches 1 if score boogalooCurse abilities matches 1.. at @e[name=slot2,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot2 matches 1 if score boogalooCurse abilities matches 1.. run scoreboard players set curse slot2 0
execute if score boogalooCurse abilities matches 1.. run scoreboard players set boogalooCurse abilities 0
execute if score curse slot3 matches 1 if score durationSlot3 regen matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot3 matches 1 if score durationSlot3 regen matches 1.. run scoreboard players set durationSlot3 regen 0
execute if score curse slot3 matches 1 if score durationSlot3 taunt matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot3 matches 1 if score durationSlot3 taunt matches 1.. run scoreboard players set durationSlot3 taunt 0
execute if score curse slot3 matches 1 if score shield slot3 matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot3 matches 1 if score shield slot3 matches 1.. run scoreboard players set shield slot3 0
execute if score curse slot3 matches 1 if score ward slot3 matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot3 matches 1 if score ward slot3 matches 1.. run scoreboard players set ward slot3 0
execute if score curse slot3 matches 1 if score boogalooCurse abilities matches 1.. at @e[name=slot3,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot3 matches 1 if score boogalooCurse abilities matches 1.. run scoreboard players set curse slot3 0
execute if score boogalooCurse abilities matches 1.. run scoreboard players set boogalooCurse abilities 0
execute if score curse slot4 matches 1 if score durationSlot4 regen matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot4 matches 1 if score durationSlot4 regen matches 1.. run scoreboard players set durationSlot4 regen 0
execute if score curse slot4 matches 1 if score durationSlot4 taunt matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot4 matches 1 if score durationSlot4 taunt matches 1.. run scoreboard players set durationSlot4 taunt 0
execute if score curse slot4 matches 1 if score shield slot4 matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot4 matches 1 if score shield slot4 matches 1.. run scoreboard players set shield slot4 0
execute if score curse slot4 matches 1 if score ward slot4 matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot4 matches 1 if score ward slot4 matches 1.. run scoreboard players set ward slot4 0
execute if score curse slot4 matches 1 if score boogalooCurse abilities matches 1.. at @e[name=slot4,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot4 matches 1 if score boogalooCurse abilities matches 1.. run scoreboard players set curse slot4 0
execute if score boogalooCurse abilities matches 1.. run scoreboard players set boogalooCurse abilities 0
execute if score curse slot5 matches 1 if score durationSlot5 regen matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot5 matches 1 if score durationSlot5 regen matches 1.. run scoreboard players set durationSlot5 regen 0
execute if score curse slot5 matches 1 if score durationSlot5 taunt matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot5 matches 1 if score durationSlot5 taunt matches 1.. run scoreboard players set durationSlot5 taunt 0
execute if score curse slot5 matches 1 if score shield slot5 matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot5 matches 1 if score shield slot5 matches 1.. run scoreboard players set shield slot5 0
execute if score curse slot5 matches 1 if score ward slot5 matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot5 matches 1 if score ward slot5 matches 1.. run scoreboard players set ward slot5 0
execute if score curse slot5 matches 1 if score boogalooCurse abilities matches 1.. at @e[name=slot5,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot5 matches 1 if score boogalooCurse abilities matches 1.. run scoreboard players set curse slot5 0
execute if score boogalooCurse abilities matches 1.. run scoreboard players set boogalooCurse abilities 0
execute if score curse slot6 matches 1 if score durationSlot6 regen matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot6 matches 1 if score durationSlot6 regen matches 1.. run scoreboard players set durationSlot6 regen 0
execute if score curse slot6 matches 1 if score durationSlot6 taunt matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot6 matches 1 if score durationSlot6 taunt matches 1.. run scoreboard players set durationSlot6 taunt 0
execute if score curse slot6 matches 1 if score shield slot6 matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot6 matches 1 if score shield slot6 matches 1.. run scoreboard players set shield slot6 0
execute if score curse slot6 matches 1 if score ward slot6 matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot6 matches 1 if score ward slot6 matches 1.. run scoreboard players set ward slot6 0
execute if score curse slot6 matches 1 if score boogalooCurse abilities matches 1.. at @e[name=slot6,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot6 matches 1 if score boogalooCurse abilities matches 1.. run scoreboard players set curse slot6 0
execute if score boogalooCurse abilities matches 1.. run scoreboard players set boogalooCurse abilities 0
execute if score curse slot7 matches 1 if score durationSlot7 regen matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot7 matches 1 if score durationSlot7 regen matches 1.. run scoreboard players set durationSlot7 regen 0
execute if score curse slot7 matches 1 if score durationSlot7 taunt matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot7 matches 1 if score durationSlot7 taunt matches 1.. run scoreboard players set durationSlot7 taunt 0
execute if score curse slot7 matches 1 if score shield slot7 matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot7 matches 1 if score shield slot7 matches 1.. run scoreboard players set shield slot7 0
execute if score curse slot7 matches 1 if score ward slot7 matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot7 matches 1 if score ward slot7 matches 1.. run scoreboard players set ward slot7 0
execute if score curse slot7 matches 1 if score boogalooCurse abilities matches 1.. at @e[name=slot7,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot7 matches 1 if score boogalooCurse abilities matches 1.. run scoreboard players set curse slot7 0
execute if score boogalooCurse abilities matches 1.. run scoreboard players set boogalooCurse abilities 0
execute if score curse slot8 matches 1 if score durationSlot8 regen matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot8 matches 1 if score durationSlot8 regen matches 1.. run scoreboard players set durationSlot8 regen 0
execute if score curse slot8 matches 1 if score durationSlot8 taunt matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot8 matches 1 if score durationSlot8 taunt matches 1.. run scoreboard players set durationSlot8 taunt 0
execute if score curse slot8 matches 1 if score shield slot8 matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot8 matches 1 if score shield slot8 matches 1.. run scoreboard players set shield slot8 0
execute if score curse slot8 matches 1 if score ward slot8 matches 1.. run scoreboard players add boogalooCurse abilities 1
execute if score curse slot8 matches 1 if score ward slot8 matches 1.. run scoreboard players set ward slot8 0
execute if score curse slot8 matches 1 if score boogalooCurse abilities matches 1.. at @e[name=slot8,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot8 matches 1 if score boogalooCurse abilities matches 1.. run scoreboard players set curse slot8 0
execute if score boogalooCurse abilities matches 1.. run scoreboard players set boogalooCurse abilities 0

#Fenrir Curse

execute if score character# slot1 matches 41 if score invincibleSlot1 booleaneffects matches 0 run execute if score fenrirhpsave saves > slot1 hp run scoreboard players set fenrirattack saves 1
execute if score character# slot2 matches 41 if score invincibleSlot2 booleaneffects matches 0 run execute if score fenrirhpsave saves > slot2 hp run scoreboard players set fenrirattack saves 1
execute if score character# slot3 matches 41 if score invincibleSlot3 booleaneffects matches 0 run execute if score fenrirhpsave saves > slot3 hp run scoreboard players set fenrirattack saves 1
execute if score character# slot5 matches 41 if score invincibleSlot5 booleaneffects matches 0 run execute if score fenrirhpsave2 saves > slot5 hp run scoreboard players set fenrirattack saves 2
execute if score character# slot6 matches 41 if score invincibleSlot6 booleaneffects matches 0 run execute if score fenrirhpsave2 saves > slot6 hp run scoreboard players set fenrirattack saves 2
execute if score character# slot7 matches 41 if score invincibleSlot7 booleaneffects matches 0 run execute if score fenrirhpsave2 saves > slot7 hp run scoreboard players set fenrirattack saves 2
execute if score character# slot1 matches 41 if score invincibleSlot1 booleaneffects matches 0 run execute if score fenrirhpsave saves > slot1 hp run function abilities:fenrirrebuke
execute if score character# slot2 matches 41 if score invincibleSlot2 booleaneffects matches 0 run execute if score fenrirhpsave saves > slot2 hp run function abilities:fenrirrebuke
execute if score character# slot3 matches 41 if score invincibleSlot3 booleaneffects matches 0 run execute if score fenrirhpsave saves > slot3 hp run function abilities:fenrirrebuke
execute if score character# slot5 matches 41 if score invincibleSlot5 booleaneffects matches 0 run execute if score fenrirhpsave2 saves > slot5 hp run function abilities:fenrirrebuke
execute if score character# slot6 matches 41 if score invincibleSlot6 booleaneffects matches 0 run execute if score fenrirhpsave2 saves > slot6 hp run function abilities:fenrirrebuke
execute if score character# slot7 matches 41 if score invincibleSlot7 booleaneffects matches 0 run execute if score fenrirhpsave2 saves > slot7 hp run function abilities:fenrirrebuke
execute if score character# slot1 matches 41 if score fenrirhpsave saves < slot1 hp run scoreboard players operation fenrirhpsave saves = slot1 hp
execute if score character# slot2 matches 41 if score fenrirhpsave saves < slot2 hp run scoreboard players operation fenrirhpsave saves = slot2 hp
execute if score character# slot3 matches 41 if score fenrirhpsave saves < slot3 hp run scoreboard players operation fenrirhpsave saves = slot3 hp
execute if score character# slot5 matches 41 if score fenrirhpsave saves < slot5 hp run scoreboard players operation fenrirhpsave2 saves = slot5 hp
execute if score character# slot6 matches 41 if score fenrirhpsave saves < slot6 hp run scoreboard players operation fenrirhpsave2 saves = slot6 hp
execute if score character# slot7 matches 41 if score fenrirhpsave saves < slot7 hp run scoreboard players operation fenrirhpsave2 saves = slot7 hp

#Zeebo Curse
execute if score character# slot6 matches 40 if score curse slot1 matches 2 if score slot1 hp matches ..200 run scoreboard players set slot1 hp 0
execute if score character# slot6 matches 40 if score curse slot2 matches 2 if score slot2 hp matches ..200 run scoreboard players set slot2 hp 0
execute if score character# slot6 matches 40 if score curse slot3 matches 2 if score slot3 hp matches ..200 run scoreboard players set slot3 hp 0
execute if score character# slot6 matches 40 if score curse slot4 matches 2 if score slot4 hp matches ..200 run scoreboard players set slot4 hp 0
execute if score character# slot2 matches 40 if score curse slot5 matches 2 if score slot5 hp matches ..200 run scoreboard players set slot5 hp 0
execute if score character# slot2 matches 40 if score curse slot6 matches 2 if score slot6 hp matches ..200 run scoreboard players set slot6 hp 0
execute if score character# slot2 matches 40 if score curse slot7 matches 2 if score slot7 hp matches ..200 run scoreboard players set slot7 hp 0
execute if score character# slot2 matches 40 if score curse slot8 matches 2 if score slot8 hp matches ..200 run scoreboard players set slot8 hp 0

#invincibility
execute if score invincibleSlot1 booleaneffects matches 1.. if score savehp1 saves > slot1 hp run scoreboard players operation slot1 hp = savehp1 saves
execute if score invincibleSlot2 booleaneffects matches 1.. if score savehp2 saves > slot2 hp run scoreboard players operation slot2 hp = savehp2 saves
execute if score invincibleSlot3 booleaneffects matches 1.. if score savehp3 saves > slot3 hp run scoreboard players operation slot3 hp = savehp3 saves
execute if score invincibleSlot4 booleaneffects matches 1.. if score savehp4 saves > slot4 hp run scoreboard players operation slot4 hp = savehp4 saves
execute if score invincibleSlot5 booleaneffects matches 1.. if score savehp5 saves > slot5 hp run scoreboard players operation slot5 hp = savehp5 saves
execute if score invincibleSlot6 booleaneffects matches 1.. if score savehp6 saves > slot6 hp run scoreboard players operation slot6 hp = savehp6 saves
execute if score invincibleSlot7 booleaneffects matches 1.. if score savehp7 saves > slot7 hp run scoreboard players operation slot7 hp = savehp7 saves
execute if score invincibleSlot8 booleaneffects matches 1.. if score savehp8 saves > slot8 hp run scoreboard players operation slot8 hp = savehp8 saves
execute if score invincibleSlot1 booleaneffects matches 1.. if score savehp1 saves < slot1 hp run scoreboard players operation savehp1 saves = slot1 hp
execute if score invincibleSlot2 booleaneffects matches 1.. if score savehp2 saves < slot2 hp run scoreboard players operation savehp2 saves = slot2 hp
execute if score invincibleSlot3 booleaneffects matches 1.. if score savehp3 saves < slot3 hp run scoreboard players operation savehp3 saves = slot3 hp
execute if score invincibleSlot4 booleaneffects matches 1.. if score savehp4 saves < slot4 hp run scoreboard players operation savehp4 saves = slot4 hp
execute if score invincibleSlot5 booleaneffects matches 1.. if score savehp5 saves < slot5 hp run scoreboard players operation savehp5 saves = slot5 hp
execute if score invincibleSlot6 booleaneffects matches 1.. if score savehp6 saves < slot6 hp run scoreboard players operation savehp6 saves = slot6 hp
execute if score invincibleSlot7 booleaneffects matches 1.. if score savehp7 saves < slot7 hp run scoreboard players operation savehp7 saves = slot7 hp
execute if score invincibleSlot8 booleaneffects matches 1.. if score savehp8 saves < slot8 hp run scoreboard players operation savehp8 saves = slot8 hp

#Scoreboard UI
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:0,max:0}}}}} run scoreboard objectives setdisplay sidebar.team.red Cooldown_Game_1
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:1,max:1}}}}} run scoreboard objectives setdisplay sidebar.team.red Speed_Game_1
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:2,max:2}}}}} run scoreboard objectives setdisplay sidebar.team.red Health_Game_1
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot1 hp 0
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot2 hp 0
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot3 hp 0
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot4 hp 0
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:3,max:3}}}}} run scoreboard objectives setdisplay sidebar.team.red Spell_Cooldown_Game_1
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:0,max:0}}}}} run scoreboard objectives setdisplay sidebar.team.dark_red Cooldown_Game_1
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:1,max:1}}}}} run scoreboard objectives setdisplay sidebar.team.dark_red Speed_Game_1
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:2,max:2}}}}} run scoreboard objectives setdisplay sidebar.team.dark_red Health_Game_1
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:3,max:3}}}}} run scoreboard objectives setdisplay sidebar.team.dark_red Spell_Cooldown_Game_1
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot5 hp 0
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot6 hp 0
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot7 hp 0
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot8 hp 0

#Skips
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:0,max:0}}}}} run function ch:turnend
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:0,max:0}}}}} run function ch:turnend
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:0,max:0}}}}} run scoreboard players set attackIsOngoingGame1 booleans 0
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:0,max:0}}}}} run function ch:spellphasep1
#Speed Reset
execute if score attackIsOngoingGame1 booleans matches 0 run execute if score speed slot8 matches ..-10000 if score speed slot7 matches ..-10000 if score speed slot6 matches ..-10000 run execute if score speed slot5 matches ..-10000 run execute if score speed slot4 matches ..-10000 run execute if score speed slot3 matches ..-10000 run execute if score speed slot2 matches ..-10000 run execute if score speed slot1 matches ..-10000 run function ch:turnresetgame1

#When I get elected, we will have so much winning
execute if score slot1 hp matches ..0 if score slot2 hp matches ..0 if score slot3 hp matches ..0 if score slot4 hp matches ..0 run tellraw @a ["",{"selector":"@p[tag=p2]"}," has won the duel against ",{"selector":"@p[tag=p1]"},"!"]
execute if score slot1 hp matches ..0 if score slot2 hp matches ..0 if score slot3 hp matches ..0 if score slot4 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p2] Wins 1
execute if score slot1 hp matches ..0 if score slot2 hp matches ..0 if score slot3 hp matches ..0 if score slot4 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p2] Combat_Rating 10
execute if score slot1 hp matches ..0 if score slot2 hp matches ..0 if score slot3 hp matches ..0 if score slot4 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p2] Gold 20
execute if score slot1 hp matches ..0 if score slot2 hp matches ..0 if score slot3 hp matches ..0 if score slot4 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p1] Gold 10
execute if score slot1 hp matches ..0 if score slot2 hp matches ..0 if score slot3 hp matches ..0 if score slot4 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players remove @p[tag=p1] Combat_Rating 5
execute if score slot1 hp matches ..0 if score slot2 hp matches ..0 if score slot3 hp matches ..0 if score slot4 hp matches ..0 run function ch:win
execute if score slot5 hp matches ..0 if score slot6 hp matches ..0 if score slot7 hp matches ..0 if score slot8 hp matches ..0 run tellraw @a ["",{"selector":"@p[tag=p1]"}," has won the duel against ",{"selector":"@p[tag=p2]"},"!"]
execute if score slot5 hp matches ..0 if score slot6 hp matches ..0 if score slot7 hp matches ..0 if score slot8 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p1] Wins 1
execute if score slot5 hp matches ..0 if score slot6 hp matches ..0 if score slot7 hp matches ..0 if score slot8 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p1] Combat_Rating 10
execute if score slot5 hp matches ..0 if score slot6 hp matches ..0 if score slot7 hp matches ..0 if score slot8 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p2] Gold 10
execute if score slot5 hp matches ..0 if score slot6 hp matches ..0 if score slot7 hp matches ..0 if score slot8 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p1] Gold 20
execute if score slot5 hp matches ..0 if score slot6 hp matches ..0 if score slot7 hp matches ..0 if score slot8 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players remove @p[tag=p2] Combat_Rating 5
execute if score slot5 hp matches ..0 if score slot6 hp matches ..0 if score slot7 hp matches ..0 if score slot8 hp matches ..0 run function ch:win
#Rapidtick
execute if score character# slot6 matches 18 if score slot6 hp matches ..1000 run execute at @n[type=armor_stand,name=slot6] run particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0.01 10
execute if score character# slot2 matches 18 if score slot2 hp matches ..1000 run execute at @n[type=armor_stand,name=slot2] run particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0.01 10
execute if score suddenDeath deaths matches 20.. run scoreboard players set slot1bleeding booleaneffects 64
execute if score suddenDeath deaths matches 20.. run scoreboard players set slot2bleeding booleaneffects 64
execute if score suddenDeath deaths matches 20.. run scoreboard players set slot3bleeding booleaneffects 64
execute if score suddenDeath deaths matches 20.. run scoreboard players set slot4bleeding booleaneffects 64
execute if score suddenDeath deaths matches 20.. run scoreboard players set slot5bleeding booleaneffects 64
execute if score suddenDeath deaths matches 20.. run scoreboard players set slot6bleeding booleaneffects 64
execute if score suddenDeath deaths matches 20.. run scoreboard players set slot7bleeding booleaneffects 64
execute if score suddenDeath deaths matches 20.. run scoreboard players set slot8bleeding booleaneffects 64
execute if score suddenDeath deaths matches 20.. if score shield slot1 matches 1.. run scoreboard players set shield slot1 0
execute if score suddenDeath deaths matches 20.. if score shield slot2 matches 1.. run scoreboard players set shield slot2 0
execute if score suddenDeath deaths matches 20.. if score shield slot3 matches 1.. run scoreboard players set shield slot3 0
execute if score suddenDeath deaths matches 20.. if score shield slot4 matches 1.. run scoreboard players set shield slot4 0
execute if score suddenDeath deaths matches 20.. if score shield slot5 matches 1.. run scoreboard players set shield slot5 0
execute if score suddenDeath deaths matches 20.. if score shield slot6 matches 1.. run scoreboard players set shield slot6 0
execute if score suddenDeath deaths matches 20.. if score shield slot7 matches 1.. run scoreboard players set shield slot7 0
execute if score suddenDeath deaths matches 20.. if score shield slot8 matches 1.. run scoreboard players set shield slot8 0

execute if score character# slot1 matches 41 if score curse slot1 matches 3 run scoreboard players set curse slot1 0
execute if score character# slot2 matches 41 if score curse slot2 matches 3 run scoreboard players set curse slot2 0
execute if score character# slot3 matches 41 if score curse slot3 matches 3 run scoreboard players set curse slot3 0
execute if score character# slot5 matches 41 if score curse slot5 matches 3 run scoreboard players set curse slot5 0
execute if score character# slot6 matches 41 if score curse slot6 matches 3 run scoreboard players set curse slot6 0
execute if score character# slot7 matches 41 if score curse slot7 matches 3 run scoreboard players set curse slot7 0
#QoL
function ch:effectparticles
function ui:ui
function ui:characterui
function ui:scoreboardui

item replace entity @p[tag=p1] container.21 with clock[minecraft:custom_name="View Cooldowns",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:0,show_particles:0b}]}]}] 1
item replace entity @p[tag=p1] container.22 with feather[minecraft:custom_name="View Speeds",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:1,show_particles:0b}]}]}] 1
item replace entity @p[tag=p1] container.23 with apple[minecraft:custom_name="View HP",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:2,show_particles:0b}]}]}] 1
item replace entity @p[tag=p1] container.31 with book[minecraft:custom_name="View Spell Cooldowns",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:3,show_particles:0b}]}]}] 1
execute if score suddenDeath deaths matches 5.. run item replace entity @p[tag=p1] container.32 with white_banner[minecraft:custom_name="Surrender",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:4,show_particles:0b}]}]}] 1
item replace entity @p[tag=p2] container.21 with clock[minecraft:custom_name="View Cooldowns",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:0,show_particles:0b}]}]}] 1
item replace entity @p[tag=p2] container.22 with feather[minecraft:custom_name="View Speeds",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:1,show_particles:0b}]}]}] 1
item replace entity @p[tag=p2] container.23 with apple[minecraft:custom_name="View HP",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:2,show_particles:0b}]}]}] 1
item replace entity @p[tag=p2] container.31 with book[minecraft:custom_name="View Spell Cooldowns",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:3,show_particles:0b}]}]}] 1
execute if score suddenDeath deaths matches 5.. run item replace entity @p[tag=p2] container.32 with white_banner[minecraft:custom_name="Surrender",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:4,show_particles:0b}]}]}] 1