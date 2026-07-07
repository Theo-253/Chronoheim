#attack initiation check
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function chtoo:basicattackstartp3
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function chtoo:basicattackstartp4

#attack targeting check
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function chtoo:basicattacks1
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function chtoo:basicattacks2
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function chtoo:basicattacks3
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function chtoo:basicattacks4
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function chtoo:basicattacks5
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function chtoo:basicattacks6
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function chtoo:basicattacks7
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function chtoo:basicattacks8
effect clear @a[tag=game2] minecraft:conduit_power

function chtoo:spelltargetinggeneralgame2
function chtoo:abilitytargetinggeneralgame2
function chtoo:atkmodifiers
function chtoo:speedcheckgame2
function chtoo:abilitychecks
function chtoo:spellchecks


#invincibility
execute if score invincibleSlot9 booleaneffects matches 1.. if score savehp9 saves > slot9 hp run scoreboard players operation slot9 hp = savehp9 saves
execute if score invincibleSlot10 booleaneffects matches 1.. if score savehp10 saves > slot10 hp run scoreboard players operation slot10 hp = savehp10 saves
execute if score invincibleSlot11 booleaneffects matches 1.. if score savehp11 saves > slot11 hp run scoreboard players operation slot11 hp = savehp11 saves
execute if score invincibleSlot12 booleaneffects matches 1.. if score savehp12 saves > slot12 hp run scoreboard players operation slot12 hp = savehp12 saves
execute if score invincibleSlot13 booleaneffects matches 1.. if score savehp13 saves > slot13 hp run scoreboard players operation slot13 hp = savehp13 saves
execute if score invincibleSlot14 booleaneffects matches 1.. if score savehp14 saves > slot14 hp run scoreboard players operation slot14 hp = savehp14 saves
execute if score invincibleSlot15 booleaneffects matches 1.. if score savehp15 saves > slot15 hp run scoreboard players operation slot15 hp = savehp15 saves
execute if score invincibleSlot16 booleaneffects matches 1.. if score savehp16 saves > slot16 hp run scoreboard players operation slot16 hp = savehp16 saves
execute if score invincibleSlot9 booleaneffects matches 1.. if score savehp9 saves < slot9 hp run scoreboard players operation savehp9 saves = slot9 hp
execute if score invincibleSlot10 booleaneffects matches 1.. if score savehp10 saves < slot10 hp run scoreboard players operation savehp10 saves = slot10 hp
execute if score invincibleSlot11 booleaneffects matches 1.. if score savehp11 saves < slot11 hp run scoreboard players operation savehp11 saves = slot11 hp
execute if score invincibleSlot12 booleaneffects matches 1.. if score savehp12 saves < slot12 hp run scoreboard players operation savehp12 saves = slot12 hp
execute if score invincibleSlot13 booleaneffects matches 1.. if score savehp13 saves < slot13 hp run scoreboard players operation savehp13 saves = slot13 hp
execute if score invincibleSlot14 booleaneffects matches 1.. if score savehp14 saves < slot14 hp run scoreboard players operation savehp14 saves = slot14 hp
execute if score invincibleSlot15 booleaneffects matches 1.. if score savehp15 saves < slot15 hp run scoreboard players operation savehp15 saves = slot15 hp
execute if score invincibleSlot16 booleaneffects matches 1.. if score savehp16 saves < slot16 hp run scoreboard players operation savehp16 saves = slot16 hp

#Scoreboard UI
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:0,max:0}}}}} run scoreboard objectives setdisplay sidebar.team.yellow Cooldown_Game_2
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:1,max:1}}}}} run scoreboard objectives setdisplay sidebar.team.yellow Speed_Game_2
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:2,max:2}}}}} run scoreboard objectives setdisplay sidebar.team.yellow Health_Game_2
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:3,max:3}}}}} run scoreboard objectives setdisplay sidebar.team.yellow Spell_Cooldown_Game_2
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot9 hp 0
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot10 hp 0
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot11 hp 0
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot12 hp 0
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:0,max:0}}}}} run scoreboard objectives setdisplay sidebar.team.gold Cooldown_Game_2
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:1,max:1}}}}} run scoreboard objectives setdisplay sidebar.team.gold Speed_Game_2
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:2,max:2}}}}} run scoreboard objectives setdisplay sidebar.team.gold Health_Game_2
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:3,max:3}}}}} run scoreboard objectives setdisplay sidebar.team.gold Spell_Cooldown_Game_2
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot13 hp 0
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot14 hp 0
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot15 hp 0
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot16 hp 0

#Skips
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:0,max:0}}}}} run function chtoo:turnend
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:0,max:0}}}}} run function chtoo:turnend
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:0,max:0}}}}} run scoreboard players set attackIsOngoingGame2 booleans 0
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:0,max:0}}}}} run function chtoo:spellphasep3
#Speed Reset
execute if score attackIsOngoingGame2 booleans matches 0 run execute if score speed slot16 matches ..-10000 if score speed slot15 matches ..-10000 if score speed slot14 matches ..-10000 run execute if score speed slot13 matches ..-10000 run execute if score speed slot12 matches ..-10000 run execute if score speed slot11 matches ..-10000 run execute if score speed slot10 matches ..-10000 run execute if score speed slot9 matches ..-10000 run function chtoo:turnresetgame2

#boogaloo curse
execute if score curse slot9 matches 1 if score durationSlot9 regen matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot9 matches 1 if score durationSlot9 regen matches 1.. run scoreboard players set durationSlot9 regen 0
execute if score curse slot9 matches 1 if score durationSlot9 taunt matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot9 matches 1 if score durationSlot9 taunt matches 1.. run scoreboard players set durationSlot9 taunt 0
execute if score curse slot9 matches 1 if score shield slot9 matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot9 matches 1 if score shield slot9 matches 1.. run scoreboard players set shield slot9 0
execute if score curse slot9 matches 1 if score ward slot9 matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot9 matches 1 if score ward slot9 matches 1.. run scoreboard players set ward slot9 0
execute if score curse slot9 matches 1 if score boogalooCurse2 abilities matches 1.. at @e[name=slot9,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot9 matches 1 if score boogalooCurse2 abilities matches 1.. run scoreboard players set curse slot9 0
execute if score boogalooCurse2 abilities matches 1.. run scoreboard players set boogalooCurse2 abilities 0
execute if score curse slot10 matches 1 if score durationSlot10 regen matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot10 matches 1 if score durationSlot10 regen matches 1.. run scoreboard players set durationSlot10 regen 0
execute if score curse slot10 matches 1 if score durationSlot10 taunt matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot10 matches 1 if score durationSlot10 taunt matches 1.. run scoreboard players set durationSlot10 taunt 0
execute if score curse slot10 matches 1 if score shield slot10 matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot10 matches 1 if score shield slot10 matches 1.. run scoreboard players set shield slot10 0
execute if score curse slot10 matches 1 if score ward slot10 matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot10 matches 1 if score ward slot10 matches 1.. run scoreboard players set ward slot10 0
execute if score curse slot10 matches 1 if score boogalooCurse2 abilities matches 1.. at @e[name=slot10,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot10 matches 1 if score boogalooCurse2 abilities matches 1.. run scoreboard players set curse slot10 0
execute if score boogalooCurse2 abilities matches 1.. run scoreboard players set boogalooCurse2 abilities 0
execute if score curse slot11 matches 1 if score durationSlot11 regen matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot11 matches 1 if score durationSlot11 regen matches 1.. run scoreboard players set durationSlot11 regen 0
execute if score curse slot11 matches 1 if score durationSlot11 taunt matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot11 matches 1 if score durationSlot11 taunt matches 1.. run scoreboard players set durationSlot11 taunt 0
execute if score curse slot11 matches 1 if score shield slot11 matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot11 matches 1 if score shield slot11 matches 1.. run scoreboard players set shield slot11 0
execute if score curse slot11 matches 1 if score ward slot11 matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot11 matches 1 if score ward slot11 matches 1.. run scoreboard players set ward slot11 0
execute if score curse slot11 matches 1 if score boogalooCurse2 abilities matches 1.. at @e[name=slot11,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot11 matches 1 if score boogalooCurse2 abilities matches 1.. run scoreboard players set curse slot11 0
execute if score boogalooCurse2 abilities matches 1.. run scoreboard players set boogalooCurse2 abilities 0
execute if score curse slot12 matches 1 if score durationSlot12 regen matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot12 matches 1 if score durationSlot12 regen matches 1.. run scoreboard players set durationSlot12 regen 0
execute if score curse slot12 matches 1 if score durationSlot12 taunt matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot12 matches 1 if score durationSlot12 taunt matches 1.. run scoreboard players set durationSlot12 taunt 0
execute if score curse slot12 matches 1 if score shield slot12 matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot12 matches 1 if score shield slot12 matches 1.. run scoreboard players set shield slot12 0
execute if score curse slot12 matches 1 if score ward slot12 matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot12 matches 1 if score ward slot12 matches 1.. run scoreboard players set ward slot12 0
execute if score curse slot12 matches 1 if score boogalooCurse2 abilities matches 1.. at @e[name=slot12,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot12 matches 1 if score boogalooCurse2 abilities matches 1.. run scoreboard players set curse slot12 0
execute if score boogalooCurse2 abilities matches 1.. run scoreboard players set boogalooCurse2 abilities 0
execute if score curse slot13 matches 1 if score durationSlot13 regen matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot13 matches 1 if score durationSlot13 regen matches 1.. run scoreboard players set durationSlot13 regen 0
execute if score curse slot13 matches 1 if score durationSlot13 taunt matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot13 matches 1 if score durationSlot13 taunt matches 1.. run scoreboard players set durationSlot13 taunt 0
execute if score curse slot13 matches 1 if score shield slot13 matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot13 matches 1 if score shield slot13 matches 1.. run scoreboard players set shield slot13 0
execute if score curse slot13 matches 1 if score ward slot13 matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot13 matches 1 if score ward slot13 matches 1.. run scoreboard players set ward slot13 0
execute if score curse slot13 matches 1 if score boogalooCurse2 abilities matches 1.. at @e[name=slot13,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot13 matches 1 if score boogalooCurse2 abilities matches 1.. run scoreboard players set curse slot13 0
execute if score boogalooCurse2 abilities matches 1.. run scoreboard players set boogalooCurse2 abilities 0
execute if score curse slot14 matches 1 if score durationSlot14 regen matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot14 matches 1 if score durationSlot14 regen matches 1.. run scoreboard players set durationSlot14 regen 0
execute if score curse slot14 matches 1 if score durationSlot14 taunt matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot14 matches 1 if score durationSlot14 taunt matches 1.. run scoreboard players set durationSlot14 taunt 0
execute if score curse slot14 matches 1 if score shield slot14 matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot14 matches 1 if score shield slot14 matches 1.. run scoreboard players set shield slot14 0
execute if score curse slot14 matches 1 if score ward slot14 matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot14 matches 1 if score ward slot14 matches 1.. run scoreboard players set ward slot14 0
execute if score curse slot14 matches 1 if score boogalooCurse2 abilities matches 1.. at @e[name=slot14,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot14 matches 1 if score boogalooCurse2 abilities matches 1.. run scoreboard players set curse slot14 0
execute if score boogalooCurse2 abilities matches 1.. run scoreboard players set boogalooCurse2 abilities 0
execute if score curse slot15 matches 1 if score durationSlot15 regen matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot15 matches 1 if score durationSlot15 regen matches 1.. run scoreboard players set durationSlot15 regen 0
execute if score curse slot15 matches 1 if score durationSlot15 taunt matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot15 matches 1 if score durationSlot15 taunt matches 1.. run scoreboard players set durationSlot15 taunt 0
execute if score curse slot15 matches 1 if score shield slot15 matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot15 matches 1 if score shield slot15 matches 1.. run scoreboard players set shield slot15 0
execute if score curse slot15 matches 1 if score ward slot15 matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot15 matches 1 if score ward slot15 matches 1.. run scoreboard players set ward slot15 0
execute if score curse slot15 matches 1 if score boogalooCurse2 abilities matches 1.. at @e[name=slot15,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot15 matches 1 if score boogalooCurse2 abilities matches 1.. run scoreboard players set curse slot15 0
execute if score boogalooCurse2 abilities matches 1.. run scoreboard players set boogalooCurse2 abilities 0
execute if score curse slot16 matches 1 if score durationSlot16 regen matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot16 matches 1 if score durationSlot16 regen matches 1.. run scoreboard players set durationSlot16 regen 0
execute if score curse slot16 matches 1 if score durationSlot16 taunt matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot16 matches 1 if score durationSlot16 taunt matches 1.. run scoreboard players set durationSlot16 taunt 0
execute if score curse slot16 matches 1 if score shield slot16 matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot16 matches 1 if score shield slot16 matches 1.. run scoreboard players set shield slot16 0
execute if score curse slot16 matches 1 if score ward slot16 matches 1.. run scoreboard players add boogalooCurse2 abilities 1
execute if score curse slot16 matches 1 if score ward slot16 matches 1.. run scoreboard players set ward slot16 0
execute if score curse slot16 matches 1 if score boogalooCurse2 abilities matches 1.. at @e[name=slot16,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot16 matches 1 if score boogalooCurse2 abilities matches 1.. run scoreboard players set curse slot16 0
execute if score boogalooCurse2 abilities matches 1.. run scoreboard players set boogalooCurse2 abilities 0

#Fenrir Curse
execute if score character# slot9 matches 41 if score fenrirhpsave3 saves < slot9 hp run scoreboard players operation fenrirhpsave3 saves = slot9 hp
execute if score character# slot10 matches 41 if score fenrirhpsave3 saves < slot10 hp run scoreboard players operation fenrirhpsave3 saves = slot10 hp
execute if score character# slot11 matches 41 if score fenrirhpsave3 saves < slot11 hp run scoreboard players operation fenrirhpsave3 saves = slot11 hp
execute if score character# slot13 matches 41 if score fenrirhpsave4 saves < slot13 hp run scoreboard players operation fenrirhpsave4 saves = slot13 hp
execute if score character# slot14 matches 41 if score fenrirhpsave4 saves < slot14 hp run scoreboard players operation fenrirhpsave4 saves = slot14 hp
execute if score character# slot15 matches 41 if score fenrirhpsave4 saves < slot15 hp run scoreboard players operation fenrirhpsave4 saves = slot15 hp
execute if score character# slot9 matches 41 if score fenrirhpsave3 saves > maxhp slot9 run scoreboard players operation fenrirhpsave3 saves = maxhp slot9
execute if score character# slot10 matches 41 if score fenrirhpsave3 saves > maxhp slot10 run scoreboard players operation fenrirhpsave3 saves = maxhp slot10
execute if score character# slot11 matches 41 if score fenrirhpsave3 saves > maxhp slot11 run scoreboard players operation fenrirhpsave3 saves = maxhp slot11
execute if score character# slot13 matches 41 if score fenrirhpsave4 saves > maxhp slot13 run scoreboard players operation fenrirhpsave4 saves = maxhp slot13
execute if score character# slot14 matches 41 if score fenrirhpsave4 saves > maxhp slot14 run scoreboard players operation fenrirhpsave4 saves = maxhp slot14
execute if score character# slot15 matches 41 if score fenrirhpsave4 saves > maxhp slot15 run scoreboard players operation fenrirhpsave4 saves = maxhp slot15
execute if score character# slot9 matches 41 if score invincibleSlot9 booleaneffects matches 0 run execute if score fenrirhpsave3 saves > slot9 hp run scoreboard players set fenrirattack2 saves 1
execute if score character# slot10 matches 41 if score invincibleSlot10 booleaneffects matches 0 run execute if score fenrirhpsave3 saves > slot10 hp run scoreboard players set fenrirattack2 saves 1
execute if score character# slot11 matches 41 if score invincibleSlot11 booleaneffects matches 0 run execute if score fenrirhpsave3 saves > slot11 hp run scoreboard players set fenrirattack2 saves 1
execute if score character# slot13 matches 41 if score invincibleSlot13 booleaneffects matches 0 run execute if score fenrirhpsave4 saves > slot13 hp run scoreboard players set fenrirattack2 saves 2
execute if score character# slot14 matches 41 if score invincibleSlot13 booleaneffects matches 0 run execute if score fenrirhpsave4 saves > slot14 hp run scoreboard players set fenrirattack2 saves 2
execute if score character# slot15 matches 41 if score invincibleSlot15 booleaneffects matches 0 run execute if score fenrirhpsave4 saves > slot15 hp run scoreboard players set fenrirattack2 saves 2
execute if score character# slot9 matches 41 if score invincibleSlot9 booleaneffects matches 0 run execute if score fenrirhpsave3 saves > slot9 hp run function abilitiestoo:fenrirrebuke
execute if score character# slot10 matches 41 if score invincibleSlot10 booleaneffects matches 0 run execute if score fenrirhpsave3 saves > slot10 hp run function abilitiestoo:fenrirrebuke
execute if score character# slot11 matches 41 if score invincibleSlot11 booleaneffects matches 0 run execute if score fenrirhpsave3 saves > slot11 hp run function abilitiestoo:fenrirrebuke
execute if score character# slot13 matches 41 if score invincibleSlot13 booleaneffects matches 0 run execute if score fenrirhpsave4 saves > slot13 hp run function abilitiestoo:fenrirrebuke
execute if score character# slot14 matches 41 if score invincibleSlot13 booleaneffects matches 0 run execute if score fenrirhpsave4 saves > slot14 hp run function abilitiestoo:fenrirrebuke
execute if score character# slot15 matches 41 if score invincibleSlot15 booleaneffects matches 0 run execute if score fenrirhpsave4 saves > slot15 hp run function abilitiestoo:fenrirrebuke


#Zeebo Curse
execute if score character# slot14 matches 40 if score curse slot9 matches 2 if score slot9 hp matches ..200 run scoreboard players set slot9 hp 0
execute if score character# slot14 matches 40 if score curse slot10 matches 2 if score slot10 hp matches ..200 run scoreboard players set slot10 hp 0
execute if score character# slot14 matches 40 if score curse slot11 matches 2 if score slot11 hp matches ..200 run scoreboard players set slot11 hp 0
execute if score character# slot14 matches 40 if score curse slot12 matches 2 if score slot12 hp matches ..200 run scoreboard players set slot12 hp 0
execute if score character# slot10 matches 40 if score curse slot13 matches 2 if score slot13 hp matches ..200 run scoreboard players set slot13 hp 0
execute if score character# slot10 matches 40 if score curse slot14 matches 2 if score slot14 hp matches ..200 run scoreboard players set slot14 hp 0
execute if score character# slot10 matches 40 if score curse slot15 matches 2 if score slot15 hp matches ..200 run scoreboard players set slot15 hp 0
execute if score character# slot10 matches 40 if score curse slot16 matches 2 if score slot16 hp matches ..200 run scoreboard players set slot16 hp 0


#When I get elected, we will have so much winning
execute if score slot9 hp matches ..0 if score slot10 hp matches ..0 if score slot11 hp matches ..0 if score slot12 hp matches ..0 run tellraw @a ["",{"selector":"@p[tag=p4]"}," has won the duel against ",{"selector":"@p[tag=p3]"},"!"]
execute if score slot9 hp matches ..0 if score slot10 hp matches ..0 if score slot11 hp matches ..0 if score slot12 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p4] Wins 1
execute if score slot9 hp matches ..0 if score slot10 hp matches ..0 if score slot11 hp matches ..0 if score slot12 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p4] Combat_Rating 10
execute if score slot9 hp matches ..0 if score slot10 hp matches ..0 if score slot11 hp matches ..0 if score slot12 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p4] Gold 20
execute if score slot9 hp matches ..0 if score slot10 hp matches ..0 if score slot11 hp matches ..0 if score slot12 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p3] Gold 10
execute if score slot9 hp matches ..0 if score slot10 hp matches ..0 if score slot11 hp matches ..0 if score slot12 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players remove @p[tag=p3] Combat_Rating 5
execute if score slot9 hp matches ..0 if score slot10 hp matches ..0 if score slot11 hp matches ..0 if score slot12 hp matches ..0 run function chtoo:win
execute if score slot13 hp matches ..0 if score slot14 hp matches ..0 if score slot15 hp matches ..0 if score slot16 hp matches ..0 run tellraw @a ["",{"selector":"@p[tag=p3]"}," has won the duel against ",{"selector":"@p[tag=p4]"},"!"]
execute if score slot13 hp matches ..0 if score slot14 hp matches ..0 if score slot15 hp matches ..0 if score slot16 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p3] Wins 1
execute if score slot13 hp matches ..0 if score slot14 hp matches ..0 if score slot15 hp matches ..0 if score slot16 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p3] Combat_Rating 10
execute if score slot13 hp matches ..0 if score slot14 hp matches ..0 if score slot15 hp matches ..0 if score slot16 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players remove @p[tag=p4] Combat_Rating 5
execute if score slot13 hp matches ..0 if score slot14 hp matches ..0 if score slot15 hp matches ..0 if score slot16 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p3] Gold 20
execute if score slot13 hp matches ..0 if score slot14 hp matches ..0 if score slot15 hp matches ..0 if score slot16 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p4] Gold 10
execute if score slot13 hp matches ..0 if score slot14 hp matches ..0 if score slot15 hp matches ..0 if score slot16 hp matches ..0 run function chtoo:win

#Rapidtick
execute if score character# slot14 matches 18 if score slot14 hp matches ..1000 run execute at @n[type=armor_stand,name=slot14] run particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0.01 10
execute if score character# slot10 matches 18 if score slot10 hp matches ..1000 run execute at @n[type=armor_stand,name=slot10] run particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0.01 10
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot9bleeding booleaneffects 64
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot10bleeding booleaneffects 64
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot11bleeding booleaneffects 64
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot12bleeding booleaneffects 64
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot13bleeding booleaneffects 64
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot14bleeding booleaneffects 64
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot15bleeding booleaneffects 64
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot16bleeding booleaneffects 64
execute if score suddenDeath2 deaths matches 20.. if score shield slot9 matches 1.. run scoreboard players set shield slot9 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot10 matches 1.. run scoreboard players set shield slot10 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot11 matches 1.. run scoreboard players set shield slot11 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot12 matches 1.. run scoreboard players set shield slot12 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot13 matches 1.. run scoreboard players set shield slot13 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot14 matches 1.. run scoreboard players set shield slot14 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot15 matches 1.. run scoreboard players set shield slot15 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot16 matches 1.. run scoreboard players set shield slot16 0


#Qol
function chtoo:effectparticles
function uitoo:ui
function uitoo:characterui
function uitoo:scoreboardui
item replace entity @p[tag=p3] container.21 with clock[minecraft:custom_name="View Cooldowns",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:0,show_particles:0b}]}]}] 1
item replace entity @p[tag=p3] container.22 with feather[minecraft:custom_name="View Speeds",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:1,show_particles:0b}]}]}] 1
item replace entity @p[tag=p3] container.23 with apple[minecraft:custom_name="View HP",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:2,show_particles:0b}]}]}] 1
item replace entity @p[tag=p3] container.31 with book[minecraft:custom_name="View Spell Cooldowns",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:3,show_particles:0b}]}]}] 1
execute if score suddenDeath2 deaths matches 5.. run item replace entity @p[tag=p3] container.32 with white_banner[minecraft:custom_name="Surrender",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:4,show_particles:0b}]}]}] 1
item replace entity @p[tag=p4] container.21 with clock[minecraft:custom_name="View Cooldowns",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:0,show_particles:0b}]}]}] 1
item replace entity @p[tag=p4] container.22 with feather[minecraft:custom_name="View Speeds",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:1,show_particles:0b}]}]}] 1
item replace entity @p[tag=p4] container.23 with apple[minecraft:custom_name="View HP",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:2,show_particles:0b}]}]}] 1
item replace entity @p[tag=p4] container.31 with book[minecraft:custom_name="View Spell Cooldowns",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:3,show_particles:0b}]}]}] 1
execute if score suddenDeath2 deaths matches 5.. run item replace entity @p[tag=p4] container.32 with white_banner[minecraft:custom_name="Surrender",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:4,show_particles:0b}]}]}] 1
