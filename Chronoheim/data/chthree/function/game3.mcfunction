#attack initiation check
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function chthree:basicattackstartp5
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function chthree:basicattackstartp6

#attack targeting check
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function chthree:basicattacks1
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function chthree:basicattacks2
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function chthree:basicattacks3
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function chthree:basicattacks4
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function chthree:basicattacks5
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function chthree:basicattacks6
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function chthree:basicattacks7
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function chthree:basicattacks8
effect clear @a[tag=game3] minecraft:conduit_power

function chthree:spelltargetinggeneralgame3
function chthree:abilitytargetinggeneralgame3
function chthree:atkmodifiers
function chthree:speedcheckgame3
function chthree:abilitychecks
function chthree:spellchecks


#invincibility
execute if score invincibleSlot17 booleaneffects matches 1.. if score savehp17 saves > slot17 hp run scoreboard players operation slot17 hp = savehp17 saves
execute if score invincibleSlot18 booleaneffects matches 1.. if score savehp18 saves > slot18 hp run scoreboard players operation slot18 hp = savehp18 saves
execute if score invincibleSlot19 booleaneffects matches 1.. if score savehp19 saves > slot19 hp run scoreboard players operation slot19 hp = savehp19 saves
execute if score invincibleSlot20 booleaneffects matches 1.. if score savehp20 saves > slot20 hp run scoreboard players operation slot20 hp = savehp20 saves
execute if score invincibleSlot21 booleaneffects matches 1.. if score savehp21 saves > slot21 hp run scoreboard players operation slot21 hp = savehp21 saves
execute if score invincibleSlot22 booleaneffects matches 1.. if score savehp22 saves > slot22 hp run scoreboard players operation slot22 hp = savehp22 saves
execute if score invincibleSlot23 booleaneffects matches 1.. if score savehp23 saves > slot23 hp run scoreboard players operation slot23 hp = savehp23 saves
execute if score invincibleSlot24 booleaneffects matches 1.. if score savehp24 saves > slot24 hp run scoreboard players operation slot24 hp = savehp24 saves
execute if score invincibleSlot17 booleaneffects matches 1.. if score savehp17 saves < slot17 hp run scoreboard players operation savehp17 saves = slot17 hp
execute if score invincibleSlot18 booleaneffects matches 1.. if score savehp18 saves < slot18 hp run scoreboard players operation savehp18 saves = slot18 hp
execute if score invincibleSlot19 booleaneffects matches 1.. if score savehp19 saves < slot19 hp run scoreboard players operation savehp19 saves = slot19 hp
execute if score invincibleSlot20 booleaneffects matches 1.. if score savehp20 saves < slot20 hp run scoreboard players operation savehp20 saves = slot20 hp
execute if score invincibleSlot21 booleaneffects matches 1.. if score savehp21 saves < slot21 hp run scoreboard players operation savehp21 saves = slot21 hp
execute if score invincibleSlot22 booleaneffects matches 1.. if score savehp22 saves < slot22 hp run scoreboard players operation savehp22 saves = slot22 hp
execute if score invincibleSlot23 booleaneffects matches 1.. if score savehp23 saves < slot23 hp run scoreboard players operation savehp23 saves = slot23 hp
execute if score invincibleSlot24 booleaneffects matches 1.. if score savehp24 saves < slot24 hp run scoreboard players operation savehp24 saves = slot24 hp

#Scoreboard UI
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:0,max:0}}}}} run scoreboard objectives setdisplay sidebar.team.blue Cooldown_Game_3
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:1,max:1}}}}} run scoreboard objectives setdisplay sidebar.team.blue Speed_Game_3
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:2,max:2}}}}} run scoreboard objectives setdisplay sidebar.team.blue Health_Game_3
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:3,max:3}}}}} run scoreboard objectives setdisplay sidebar.team.blue Spell_Cooldown_Game_3
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot17 hp 0
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot18 hp 0
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot19 hp 0
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot20 hp 0
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:0,max:0}}}}} run scoreboard objectives setdisplay sidebar.team.dark_blue Cooldown_Game_3
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:1,max:1}}}}} run scoreboard objectives setdisplay sidebar.team.dark_blue Speed_Game_3
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:2,max:2}}}}} run scoreboard objectives setdisplay sidebar.team.dark_blue Health_Game_3
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:3,max:3}}}}} run scoreboard objectives setdisplay sidebar.team.dark_blue Spell_Cooldown_Game_3
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot21 hp 0
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot22 hp 0
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot23 hp 0
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:4,max:4}}}}} run scoreboard players set slot24 hp 0

#Skips
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:0,max:0}}}}} run function chthree:turnend
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:0,max:0}}}}} run function chthree:turnend
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:0,max:0}}}}} run scoreboard players set attackIsOngoingGame3 booleans 0
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:0,max:0}}}}} run function chthree:spellphasep5
#Speed Reset
execute if score attackIsOngoingGame3 booleans matches 0 run execute if score speed slot24 matches ..-10000 if score speed slot23 matches ..-10000 if score speed slot22 matches ..-10000 run execute if score speed slot21 matches ..-10000 run execute if score speed slot20 matches ..-10000 run execute if score speed slot19 matches ..-10000 run execute if score speed slot18 matches ..-10000 run execute if score speed slot17 matches ..-10000 run function chthree:turnresetgame3

#boogaloo curse
execute if score curse slot17 matches 1 if score durationSlot17 regen matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot17 matches 1 if score durationSlot17 regen matches 1.. run scoreboard players set durationSlot17 regen 0
execute if score curse slot17 matches 1 if score durationSlot17 taunt matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot17 matches 1 if score durationSlot17 taunt matches 1.. run scoreboard players set durationSlot17 taunt 0
execute if score curse slot17 matches 1 if score shield slot17 matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot17 matches 1 if score shield slot17 matches 1.. run scoreboard players set shield slot17 0
execute if score curse slot17 matches 1 if score ward slot17 matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot17 matches 1 if score ward slot17 matches 1.. run scoreboard players set ward slot17 0
execute if score curse slot17 matches 1 if score boogalooCurse3 abilities matches 1.. at @e[name=slot17,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot17 matches 1 if score boogalooCurse3 abilities matches 1.. run scoreboard players set curse slot17 0
execute if score boogalooCurse3 abilities matches 1.. run scoreboard players set boogalooCurse3 abilities 0
execute if score curse slot18 matches 1 if score durationSlot18 regen matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot18 matches 1 if score durationSlot18 regen matches 1.. run scoreboard players set durationSlot18 regen 0
execute if score curse slot18 matches 1 if score durationSlot18 taunt matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot18 matches 1 if score durationSlot18 taunt matches 1.. run scoreboard players set durationSlot18 taunt 0
execute if score curse slot18 matches 1 if score shield slot18 matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot18 matches 1 if score shield slot18 matches 1.. run scoreboard players set shield slot18 0
execute if score curse slot18 matches 1 if score ward slot18 matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot18 matches 1 if score ward slot18 matches 1.. run scoreboard players set ward slot18 0
execute if score curse slot18 matches 1 if score boogalooCurse3 abilities matches 1.. at @e[name=slot18,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot18 matches 1 if score boogalooCurse3 abilities matches 1.. run scoreboard players set curse slot18 0
execute if score boogalooCurse3 abilities matches 1.. run scoreboard players set boogalooCurse3 abilities 0
execute if score curse slot19 matches 1 if score durationSlot19 regen matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot19 matches 1 if score durationSlot19 regen matches 1.. run scoreboard players set durationSlot19 regen 0
execute if score curse slot19 matches 1 if score durationSlot19 taunt matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot19 matches 1 if score durationSlot19 taunt matches 1.. run scoreboard players set durationSlot19 taunt 0
execute if score curse slot19 matches 1 if score shield slot19 matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot19 matches 1 if score shield slot19 matches 1.. run scoreboard players set shield slot19 0
execute if score curse slot19 matches 1 if score ward slot19 matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot19 matches 1 if score ward slot19 matches 1.. run scoreboard players set ward slot19 0
execute if score curse slot19 matches 1 if score boogalooCurse3 abilities matches 1.. at @e[name=slot19,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot19 matches 1 if score boogalooCurse3 abilities matches 1.. run scoreboard players set curse slot19 0
execute if score boogalooCurse3 abilities matches 1.. run scoreboard players set boogalooCurse3 abilities 0
execute if score curse slot20 matches 1 if score durationSlot20 regen matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot20 matches 1 if score durationSlot20 regen matches 1.. run scoreboard players set durationSlot20 regen 0
execute if score curse slot20 matches 1 if score durationSlot20 taunt matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot20 matches 1 if score durationSlot20 taunt matches 1.. run scoreboard players set durationSlot20 taunt 0
execute if score curse slot20 matches 1 if score shield slot20 matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot20 matches 1 if score shield slot20 matches 1.. run scoreboard players set shield slot20 0
execute if score curse slot20 matches 1 if score ward slot20 matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot20 matches 1 if score ward slot20 matches 1.. run scoreboard players set ward slot20 0
execute if score curse slot20 matches 1 if score boogalooCurse3 abilities matches 1.. at @e[name=slot20,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot20 matches 1 if score boogalooCurse3 abilities matches 1.. run scoreboard players set curse slot20 0
execute if score boogalooCurse3 abilities matches 1.. run scoreboard players set boogalooCurse3 abilities 0
execute if score curse slot21 matches 1 if score durationSlot21 regen matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot21 matches 1 if score durationSlot21 regen matches 1.. run scoreboard players set durationSlot21 regen 0
execute if score curse slot21 matches 1 if score durationSlot21 taunt matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot21 matches 1 if score durationSlot21 taunt matches 1.. run scoreboard players set durationSlot21 taunt 0
execute if score curse slot21 matches 1 if score shield slot21 matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot21 matches 1 if score shield slot21 matches 1.. run scoreboard players set shield slot21 0
execute if score curse slot21 matches 1 if score ward slot21 matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot21 matches 1 if score ward slot21 matches 1.. run scoreboard players set ward slot21 0
execute if score curse slot21 matches 1 if score boogalooCurse3 abilities matches 1.. at @e[name=slot21,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot21 matches 1 if score boogalooCurse3 abilities matches 1.. run scoreboard players set curse slot21 0
execute if score boogalooCurse3 abilities matches 1.. run scoreboard players set boogalooCurse3 abilities 0
execute if score curse slot22 matches 1 if score durationSlot22 regen matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot22 matches 1 if score durationSlot22 regen matches 1.. run scoreboard players set durationSlot22 regen 0
execute if score curse slot22 matches 1 if score durationSlot22 taunt matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot22 matches 1 if score durationSlot22 taunt matches 1.. run scoreboard players set durationSlot22 taunt 0
execute if score curse slot22 matches 1 if score shield slot22 matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot22 matches 1 if score shield slot22 matches 1.. run scoreboard players set shield slot22 0
execute if score curse slot22 matches 1 if score ward slot22 matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot22 matches 1 if score ward slot22 matches 1.. run scoreboard players set ward slot22 0
execute if score curse slot22 matches 1 if score boogalooCurse3 abilities matches 1.. at @e[name=slot22,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot22 matches 1 if score boogalooCurse3 abilities matches 1.. run scoreboard players set curse slot22 0
execute if score boogalooCurse3 abilities matches 1.. run scoreboard players set boogalooCurse3 abilities 0
execute if score curse slot23 matches 1 if score durationSlot23 regen matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot23 matches 1 if score durationSlot23 regen matches 1.. run scoreboard players set durationSlot23 regen 0
execute if score curse slot23 matches 1 if score durationSlot23 taunt matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot23 matches 1 if score durationSlot23 taunt matches 1.. run scoreboard players set durationSlot23 taunt 0
execute if score curse slot23 matches 1 if score shield slot23 matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot23 matches 1 if score shield slot23 matches 1.. run scoreboard players set shield slot23 0
execute if score curse slot23 matches 1 if score ward slot23 matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot23 matches 1 if score ward slot23 matches 1.. run scoreboard players set ward slot23 0
execute if score curse slot23 matches 1 if score boogalooCurse3 abilities matches 1.. at @e[name=slot23,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot23 matches 1 if score boogalooCurse3 abilities matches 1.. run scoreboard players set curse slot23 0
execute if score boogalooCurse3 abilities matches 1.. run scoreboard players set boogalooCurse3 abilities 0
execute if score curse slot24 matches 1 if score durationSlot24 regen matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot24 matches 1 if score durationSlot24 regen matches 1.. run scoreboard players set durationSlot24 regen 0
execute if score curse slot24 matches 1 if score durationSlot24 taunt matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot24 matches 1 if score durationSlot24 taunt matches 1.. run scoreboard players set durationSlot24 taunt 0
execute if score curse slot24 matches 1 if score shield slot24 matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot24 matches 1 if score shield slot24 matches 1.. run scoreboard players set shield slot24 0
execute if score curse slot24 matches 1 if score ward slot24 matches 1.. run scoreboard players add boogalooCurse3 abilities 1
execute if score curse slot24 matches 1 if score ward slot24 matches 1.. run scoreboard players set ward slot24 0
execute if score curse slot24 matches 1 if score boogalooCurse3 abilities matches 1.. at @e[name=slot24,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score curse slot24 matches 1 if score boogalooCurse3 abilities matches 1.. run scoreboard players set curse slot24 0
execute if score boogalooCurse3 abilities matches 1.. run scoreboard players set boogalooCurse3 abilities 0

#Fenrir Curse
execute if score character# slot17 matches 41 if score fenrirhpsave5 saves < slot17 hp run scoreboard players operation fenrirhpsave5 saves = slot17 hp
execute if score character# slot18 matches 41 if score fenrirhpsave5 saves < slot18 hp run scoreboard players operation fenrirhpsave5 saves = slot18 hp
execute if score character# slot19 matches 41 if score fenrirhpsave5 saves < slot19 hp run scoreboard players operation fenrirhpsave5 saves = slot19 hp
execute if score character# slot21 matches 41 if score fenrirhpsave6 saves < slot21 hp run scoreboard players operation fenrirhpsave6 saves = slot21 hp
execute if score character# slot22 matches 41 if score fenrirhpsave6 saves < slot22 hp run scoreboard players operation fenrirhpsave6 saves = slot22 hp
execute if score character# slot23 matches 41 if score fenrirhpsave6 saves < slot23 hp run scoreboard players operation fenrirhpsave6 saves = slot23 hp
execute if score character# slot17 matches 41 if score fenrirhpsave5 saves > maxhp slot17 run scoreboard players operation fenrirhpsave5 saves = maxhp slot17
execute if score character# slot18 matches 41 if score fenrirhpsave5 saves > maxhp slot18 run scoreboard players operation fenrirhpsave5 saves = maxhp slot18
execute if score character# slot19 matches 41 if score fenrirhpsave5 saves > maxhp slot19 run scoreboard players operation fenrirhpsave5 saves = maxhp slot19
execute if score character# slot21 matches 41 if score fenrirhpsave6 saves > maxhp slot21 run scoreboard players operation fenrirhpsave6 saves = maxhp slot21
execute if score character# slot22 matches 41 if score fenrirhpsave6 saves > maxhp slot22 run scoreboard players operation fenrirhpsave6 saves = maxhp slot22
execute if score character# slot23 matches 41 if score fenrirhpsave6 saves > maxhp slot23 run scoreboard players operation fenrirhpsave6 saves = maxhp slot23
execute if score character# slot17 matches 41 if score invincibleSlot17 booleaneffects matches 0 run execute if score fenrirhpsave5 saves > slot17 hp run scoreboard players set fenrirattack3 saves 1
execute if score character# slot18 matches 41 if score invincibleSlot18 booleaneffects matches 0 run execute if score fenrirhpsave5 saves > slot18 hp run scoreboard players set fenrirattack3 saves 1
execute if score character# slot19 matches 41 if score invincibleSlot19 booleaneffects matches 0 run execute if score fenrirhpsave5 saves > slot19 hp run scoreboard players set fenrirattack3 saves 1
execute if score character# slot21 matches 41 if score invincibleSlot21 booleaneffects matches 0 run execute if score fenrirhpsave6 saves > slot21 hp run scoreboard players set fenrirattack3 saves 2
execute if score character# slot22 matches 41 if score invincibleSlot22 booleaneffects matches 0 run execute if score fenrirhpsave6 saves > slot22 hp run scoreboard players set fenrirattack3 saves 2
execute if score character# slot23 matches 41 if score invincibleSlot23 booleaneffects matches 0 run execute if score fenrirhpsave6 saves > slot23 hp run scoreboard players set fenrirattack3 saves 2
execute if score character# slot17 matches 41 if score invincibleSlot17 booleaneffects matches 0 run execute if score fenrirhpsave5 saves > slot17 hp run function abilitiesthree:fenrirrebuke
execute if score character# slot18 matches 41 if score invincibleSlot18 booleaneffects matches 0 run execute if score fenrirhpsave5 saves > slot18 hp run function abilitiesthree:fenrirrebuke
execute if score character# slot19 matches 41 if score invincibleSlot19 booleaneffects matches 0 run execute if score fenrirhpsave5 saves > slot19 hp run function abilitiesthree:fenrirrebuke
execute if score character# slot21 matches 41 if score invincibleSlot21 booleaneffects matches 0 run execute if score fenrirhpsave6 saves > slot21 hp run function abilitiesthree:fenrirrebuke
execute if score character# slot22 matches 41 if score invincibleSlot22 booleaneffects matches 0 run execute if score fenrirhpsave6 saves > slot22 hp run function abilitiesthree:fenrirrebuke
execute if score character# slot23 matches 41 if score invincibleSlot23 booleaneffects matches 0 run execute if score fenrirhpsave6 saves > slot23 hp run function abilitiesthree:fenrirrebuke


#Zeebo Curse
execute if score character# slot22 matches 40 if score curse slot17 matches 2 if score slot17 hp matches ..200 run scoreboard players set slot17 hp 0
execute if score character# slot22 matches 40 if score curse slot18 matches 2 if score slot18 hp matches ..200 run scoreboard players set slot18 hp 0
execute if score character# slot22 matches 40 if score curse slot19 matches 2 if score slot19 hp matches ..200 run scoreboard players set slot19 hp 0
execute if score character# slot22 matches 40 if score curse slot20 matches 2 if score slot20 hp matches ..200 run scoreboard players set slot20 hp 0
execute if score character# slot18 matches 40 if score curse slot21 matches 2 if score slot21 hp matches ..200 run scoreboard players set slot21 hp 0
execute if score character# slot18 matches 40 if score curse slot22 matches 2 if score slot22 hp matches ..200 run scoreboard players set slot22 hp 0
execute if score character# slot18 matches 40 if score curse slot23 matches 2 if score slot23 hp matches ..200 run scoreboard players set slot23 hp 0
execute if score character# slot18 matches 40 if score curse slot24 matches 2 if score slot24 hp matches ..200 run scoreboard players set slot24 hp 0


#When I get elected, we will have so much winning
execute if score slot17 hp matches ..0 if score slot18 hp matches ..0 if score slot19 hp matches ..0 if score slot20 hp matches ..0 run tellraw @a ["",{"selector":"@p[tag=p6]"}," has won the duel against ",{"selector":"@p[tag=p5]"},"!"]
execute if score slot17 hp matches ..0 if score slot18 hp matches ..0 if score slot19 hp matches ..0 if score slot20 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p6] Wins 1
execute if score slot17 hp matches ..0 if score slot18 hp matches ..0 if score slot19 hp matches ..0 if score slot20 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p6] Combat_Rating 10
execute if score slot17 hp matches ..0 if score slot18 hp matches ..0 if score slot19 hp matches ..0 if score slot20 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p5] Gold 10
execute if score slot17 hp matches ..0 if score slot18 hp matches ..0 if score slot19 hp matches ..0 if score slot20 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p6] Gold 20
execute if score slot17 hp matches ..0 if score slot18 hp matches ..0 if score slot19 hp matches ..0 if score slot20 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players remove @p[tag=p5] Combat_Rating 5 
execute if score slot17 hp matches ..0 if score slot18 hp matches ..0 if score slot19 hp matches ..0 if score slot20 hp matches ..0 run function chthree:win
execute if score slot21 hp matches ..0 if score slot22 hp matches ..0 if score slot23 hp matches ..0 if score slot24 hp matches ..0 run tellraw @a ["",{"selector":"@p[tag=p5]"}," has won the duel against ",{"selector":"@p[tag=p6]"},"!"]
execute if score slot21 hp matches ..0 if score slot22 hp matches ..0 if score slot23 hp matches ..0 if score slot24 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p5] Wins 1
execute if score slot21 hp matches ..0 if score slot22 hp matches ..0 if score slot23 hp matches ..0 if score slot24 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p5] Combat_Rating 10
execute if score slot21 hp matches ..0 if score slot22 hp matches ..0 if score slot23 hp matches ..0 if score slot24 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p5] Gold 20
execute if score slot21 hp matches ..0 if score slot22 hp matches ..0 if score slot23 hp matches ..0 if score slot24 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p6] Gold 10
execute if score slot21 hp matches ..0 if score slot22 hp matches ..0 if score slot23 hp matches ..0 if score slot24 hp matches ..0 if score testing Combat_Rating matches 0 run scoreboard players remove @p[tag=p6] Combat_Rating 5
execute if score slot21 hp matches ..0 if score slot22 hp matches ..0 if score slot23 hp matches ..0 if score slot24 hp matches ..0 run function chthree:win

#Rapidtick
execute if score character# slot22 matches 18 if score slot22 hp matches ..1000 run execute at @n[type=armor_stand,name=slot22] run particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0.01 10
execute if score character# slot18 matches 18 if score slot18 hp matches ..1000 run execute at @n[type=armor_stand,name=slot18] run particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0.01 10
execute if score suddenDeath3 deaths matches 20.. run scoreboard players set slot17bleeding booleaneffects 64
execute if score suddenDeath3 deaths matches 20.. run scoreboard players set slot18bleeding booleaneffects 64
execute if score suddenDeath3 deaths matches 20.. run scoreboard players set slot19bleeding booleaneffects 64
execute if score suddenDeath3 deaths matches 20.. run scoreboard players set slot20bleeding booleaneffects 64
execute if score suddenDeath3 deaths matches 20.. run scoreboard players set slot21bleeding booleaneffects 64
execute if score suddenDeath3 deaths matches 20.. run scoreboard players set slot22bleeding booleaneffects 64
execute if score suddenDeath3 deaths matches 20.. run scoreboard players set slot23bleeding booleaneffects 64
execute if score suddenDeath3 deaths matches 20.. run scoreboard players set slot24bleeding booleaneffects 64
execute if score suddenDeath3 deaths matches 20.. if score shield slot17 matches 1.. run scoreboard players set shield slot17 0
execute if score suddenDeath3 deaths matches 20.. if score shield slot18 matches 1.. run scoreboard players set shield slot18 0
execute if score suddenDeath3 deaths matches 20.. if score shield slot19 matches 1.. run scoreboard players set shield slot19 0
execute if score suddenDeath3 deaths matches 20.. if score shield slot20 matches 1.. run scoreboard players set shield slot20 0
execute if score suddenDeath3 deaths matches 20.. if score shield slot21 matches 1.. run scoreboard players set shield slot21 0
execute if score suddenDeath3 deaths matches 20.. if score shield slot22 matches 1.. run scoreboard players set shield slot22 0
execute if score suddenDeath3 deaths matches 20.. if score shield slot23 matches 1.. run scoreboard players set shield slot23 0
execute if score suddenDeath3 deaths matches 20.. if score shield slot24 matches 1.. run scoreboard players set shield slot24 0


#QoL
item replace entity @p[tag=p5] container.21 with clock[minecraft:custom_name="View Cooldowns",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:0,show_particles:0b}]}]}] 1
item replace entity @p[tag=p5] container.22 with feather[minecraft:custom_name="View Speeds",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:1,show_particles:0b}]}]}] 1
item replace entity @p[tag=p5] container.23 with apple[minecraft:custom_name="View HP",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:2,show_particles:0b}]}]}] 1
item replace entity @p[tag=p5] container.31 with book[minecraft:custom_name="View Spell Cooldowns",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:3,show_particles:0b}]}]}] 1
item replace entity @p[tag=p5] container.32 with white_banner[minecraft:custom_name="Surrender",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:4,show_particles:0b}]}]}] 1
item replace entity @p[tag=p6] container.21 with clock[minecraft:custom_name="View Cooldowns",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:0,show_particles:0b}]}]}] 1
item replace entity @p[tag=p6] container.22 with feather[minecraft:custom_name="View Speeds",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:1,show_particles:0b}]}]}] 1
item replace entity @p[tag=p6] container.23 with apple[minecraft:custom_name="View HP",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:2,show_particles:0b}]}]}] 1
item replace entity @p[tag=p6] container.31 with book[minecraft:custom_name="View Spell Cooldowns",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:3,show_particles:0b}]}]}] 1
item replace entity @p[tag=p6] container.32 with white_banner[minecraft:custom_name="Surrender",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:4,show_particles:0b}]}]}] 1

function chthree:effectparticles
function uithree:ui
function uithree:characterui
function uithree:scoreboardui