scoreboard objectives remove Health_Game_3
scoreboard objectives remove Speed_Game_3
scoreboard objectives remove Cooldown_Game_3
scoreboard objectives remove Spell_Cooldown_Game_3
scoreboard players set character# slot17 0
scoreboard players set character# slot18 0
scoreboard players set character# slot19 0
scoreboard players set character# slot20 0
scoreboard players set character# slot21 0
scoreboard players set character# slot22 0
scoreboard players set character# slot23 0
scoreboard players set character# slot24 0
scoreboard players set cooldown slot17 0
scoreboard players set cooldown slot18 0
scoreboard players set cooldown slot19 0
scoreboard players set cooldown slot20 0
scoreboard players set cooldown slot21 0
scoreboard players set cooldown slot22 0
scoreboard players set cooldown slot23 0
scoreboard players set cooldown slot24 0
scoreboard players set speed slot17 0
scoreboard players set speed slot18 0
scoreboard players set speed slot19 0
scoreboard players set speed slot20 0
scoreboard players set speed slot21 0
scoreboard players set speed slot22 0
scoreboard players set speed slot23 0
scoreboard players set speed slot24 0
scoreboard players set game3Ongoing ongoinggames 0
clear @a[tag=game3]
team leave @a[tag=game3]
tp @a[tag=game3] -32 51 1
tag @a[tag=game3] remove fireball
tag @a[tag=game3] remove chainlightning
tag @a[tag=game3] remove heal
tag @a[tag=game3] remove magicmissile
tag @a[tag=game3] remove ritualofblood
tag @a[tag=game3] remove frostbolt
tag @a[tag=game3] remove meteor
tag @a[tag=game3] remove shield
tag @a[tag=game3] remove shockorb
tag @a[tag=game3] remove witchbolt
tag @a[tag=game3] remove swiftness
tag @a[tag=game3] remove embrittle
tag @a[tag=game3] remove embiggen
tag @a[tag=game3] remove immolate
tag @a[tag=game3] remove evileye
tag @a[tag=game3] remove protectorsrune
tag @a[tag=game3] remove miracle
tag @a[tag=game3] remove miasma
tag @a[tag=game3] remove ward
tag @a[tag=game3] remove blizzard
tag @a[tag=game3] remove plague
tag @a[tag=game3] remove secondwind
tag @a[tag=game3] remove witchesbrew
tag @a[tag=game3] remove fontofwisdom
tag @a[tag=game3] remove fountainofyouth
tag @a[tag=game3] remove dragonforge
tag @a[tag=game3] remove overclock
tag @a[tag=game3] remove shiftingshadows
tag @a[tag=game3] remove chronowarp
tag @a[tag=game3] remove healingtotem
tag @a remove p5
tag @a remove p6
tag @a remove game3
scoreboard players set alivep5 deaths 3
scoreboard players set alivep6 deaths 3
scoreboard players set abilityusep5 booleans 0
scoreboard players set abilityusep6 booleans 0
scoreboard players set slot17isatk booleans 0
scoreboard players set slot18isatk booleans 0
scoreboard players set slot19isatk booleans 0
scoreboard players set slot20isatk booleans 0
scoreboard players set slot21isatk booleans 0
scoreboard players set slot22isatk booleans 0
scoreboard players set slot23isatk booleans 0
scoreboard players set slot24isatk booleans 0
scoreboard players set game3start ongoinggames 0
scoreboard players reset slot20 hp
scoreboard players reset slot24 hp
function chthree:cleanseslot17
function chthree:cleanseslot18
function chthree:cleanseslot19
function chthree:cleanseslot20
function chthree:cleanseslot21
function chthree:cleanseslot22
function chthree:cleanseslot23
function chthree:cleanseslot24
scoreboard players set durationSlot17 speedBuffs 0
scoreboard players set durationSlot18 speedBuffs 0
scoreboard players set durationSlot19 speedBuffs 0
scoreboard players set durationSlot20 speedBuffs 0
scoreboard players set durationSlot21 speedBuffs 0
scoreboard players set durationSlot22 speedBuffs 0
scoreboard players set durationSlot23 speedBuffs 0
scoreboard players set durationSlot24 speedBuffs 0
scoreboard players set durationSlot17 regen 0
scoreboard players set durationSlot18 regen 0
scoreboard players set durationSlot19 regen 0
scoreboard players set durationSlot20 regen 0
scoreboard players set durationSlot21 regen 0
scoreboard players set durationSlot22 regen 0
scoreboard players set durationSlot23 regen 0
scoreboard players set durationSlot24 regen 0
scoreboard players set durationSlot17 shield 0
scoreboard players set durationSlot18 shield 0
scoreboard players set durationSlot19 shield 0
scoreboard players set durationSlot20 shield 0
scoreboard players set durationSlot21 shield 0
scoreboard players set durationSlot22 shield 0
scoreboard players set durationSlot23 shield 0
scoreboard players set durationSlot24 shield 0
scoreboard players set buffDurationslot17 atkmodifiers 0
scoreboard players set buffDurationslot18 atkmodifiers 0
scoreboard players set buffDurationslot19 atkmodifiers 0
scoreboard players set buffDurationslot20 atkmodifiers 0
scoreboard players set buffDurationslot21 atkmodifiers 0
scoreboard players set buffDurationslot22 atkmodifiers 0
scoreboard players set buffDurationslot23 atkmodifiers 0
scoreboard players set buffDurationSlot16 atkmodifiers 0
scoreboard players set debuffDurationslot17 atkmodifiers 0
scoreboard players set debuffDurationslot18 atkmodifiers 0
scoreboard players set debuffDurationslot19 atkmodifiers 0
scoreboard players set debuffDurationslot20 atkmodifiers 0
scoreboard players set debuffDurationslot21 atkmodifiers 0
scoreboard players set debuffDurationslot22 atkmodifiers 0
scoreboard players set debuffDurationslot23 atkmodifiers 0
scoreboard players set debuffDurationSlot16 atkmodifiers 0
scoreboard players set slot17 stun 0
scoreboard players set slot18 stun 0
scoreboard players set slot19 stun 0
scoreboard players set slot20 stun 0
scoreboard players set slot21 stun 0
scoreboard players set slot22 stun 0
scoreboard players set slot23 stun 0
scoreboard players set slot24 stun 0
scoreboard players set disarmedslot17 booleaneffects 0
scoreboard players set disarmedslot18 booleaneffects 0
scoreboard players set disarmedslot19 booleaneffects 0
scoreboard players set disarmedslot20 booleaneffects 0
scoreboard players set disarmedslot21 booleaneffects 0
scoreboard players set disarmedslot22 booleaneffects 0
scoreboard players set disarmedslot23 booleaneffects 0
scoreboard players set disarmedslot24 booleaneffects 0
scoreboard players set nobasicatk slot17 0
scoreboard players set nobasicatk slot18 0
scoreboard players set nobasicatk slot19 0
scoreboard players set nobasicatk slot20 0
scoreboard players set nobasicatk slot21 0
scoreboard players set nobasicatk slot22 0
scoreboard players set nobasicatk slot23 0
scoreboard players set nobasicatk slot24 0
scoreboard players set atkmultiplier slot17 1
scoreboard players set atkmultiplier slot18 1
scoreboard players set atkmultiplier slot19 1
scoreboard players set atkmultiplier slot20 1
scoreboard players set atkmultiplier slot21 1
scoreboard players set atkmultiplier slot22 1
scoreboard players set atkmultiplier slot23 1
scoreboard players set atkmultiplier slot24 1
scoreboard players set ward slot17 0
scoreboard players set ward slot18 0
scoreboard players set ward slot19 0
scoreboard players set ward slot20 0
scoreboard players set ward slot21 0
scoreboard players set ward slot22 0
scoreboard players set ward slot23 0
scoreboard players set ward slot24 0
scoreboard players set doubleatk slot17 0
scoreboard players set doubleatk slot18 0
scoreboard players set doubleatk slot19 0
scoreboard players set doubleatk slot20 0
scoreboard players set doubleatk slot21 0
scoreboard players set doubleatk slot22 0
scoreboard players set doubleatk slot23 0
scoreboard players set doubleatk slot24 0
scoreboard players set splash slot17 0
scoreboard players set splash slot18 0
scoreboard players set splash slot19 0
scoreboard players set splash slot20 0
scoreboard players set splash slot21 0
scoreboard players set splash slot22 0
scoreboard players set splash slot23 0
scoreboard players set splash slot24 0
scoreboard players set lifesteal slot17 0
scoreboard players set lifesteal slot18 0
scoreboard players set lifesteal slot19 0
scoreboard players set lifesteal slot20 0
scoreboard players set lifesteal slot21 0
scoreboard players set lifesteal slot22 0
scoreboard players set lifesteal slot23 0
scoreboard players set lifesteal slot24 0
scoreboard players set invincibleslot17 booleaneffects 0
scoreboard players set invincibleslot18 booleaneffects 0
scoreboard players set invincibleslot19 booleaneffects 0
scoreboard players set invincibleslot20 booleaneffects 0
scoreboard players set invincibleslot21 booleaneffects 0
scoreboard players set invincibleslot22 booleaneffects 0
scoreboard players set invincibleslot23 booleaneffects 0
scoreboard players set invincibleSlot16 booleaneffects 0
scoreboard players set fireballCooldown player5spells 0
scoreboard players set chainLightningCooldown player5spells 0
scoreboard players set healCooldown player5spells 0
scoreboard players set magicMissileCooldown player5spells 0
scoreboard players set ritualOfBloodCooldown player5spells 0
scoreboard players set frostboltCooldown player5spells 0
scoreboard players set shockOrbCooldown player5spells 0
scoreboard players set meteorCooldown player5spells 0
scoreboard players set shieldCooldown player5spells 0
scoreboard players set witchboltCooldown player5spells 0
scoreboard players set swiftnessCooldown player5spells 0
scoreboard players set embrittleCooldown player5spells 0
scoreboard players set embiggenCooldown player5spells 0
scoreboard players set immolateCooldown player5spells 0
scoreboard players set protectorsRuneCooldown player5spells 0
scoreboard players set evilEyeCooldown player5spells 0
scoreboard players set miasmaCooldown player5spells 0
scoreboard players set miracleCooldown player5spells 0
scoreboard players set wardCooldown player5spells 0
scoreboard players set blizzardCooldown player5spells 0
scoreboard players set plagueCooldown player5spells 0
scoreboard players set secondWindCooldown player5spells 0
scoreboard players set witchesBrewCooldown player5spells 0
scoreboard players set fontOfWisdomCooldown player5spells 0
scoreboard players set fountainOfYouthCooldown player5spells 0
scoreboard players set dragonforgeCooldown player5spells 0
scoreboard players set overclockCooldown player5spells 0
scoreboard players set shiftingShadowsCooldown player5spells 0
scoreboard players set chronoWarpCooldown player5spells 0
scoreboard players set healingTotemCooldown player5spells 0
scoreboard players set fireballCooldown player6spells 0
scoreboard players set chainLightningCooldown player6spells 0
scoreboard players set healCooldown player6spells 0
scoreboard players set magicMissileCooldown player6spells 0
scoreboard players set ritualOfBloodCooldown player6spells 0
scoreboard players set frostBoltCooldown player6spells 0
scoreboard players set shockOrbCooldown player6spells 0
scoreboard players set meteorCooldown player6spells 0
scoreboard players set shieldCooldown player6spells 0
scoreboard players set witchboltCooldown player6spells 0
scoreboard players set swiftnessCooldown player6spells 0
scoreboard players set embrittleCooldown player6spells 0
scoreboard players set embiggenCooldown player6spells 0
scoreboard players set immolateCooldown player6spells 0
scoreboard players set protectorsRuneCooldown player6spells 0
scoreboard players set evilEyeCooldown player6spells 0
scoreboard players set miasmaCooldown player6spells 0
scoreboard players set miracleCooldown player6spells 0
scoreboard players set wardCooldown player6spells 0
scoreboard players set blizzardCooldown player6spells 0
scoreboard players set plagueCooldown player6spells 0
scoreboard players set secondWindCooldown player6spells 0
scoreboard players set witchesBrewCooldown player6spells 0
scoreboard players set fontOfWisdomCooldown player6spells 0
scoreboard players set fountainOfYouthCooldown player6spells 0
scoreboard players set dragonforgeCooldown player6spells 0
scoreboard players set overclockCooldown player6spells 0
scoreboard players set shiftingShadowsCooldown player6spells 0
scoreboard players set chronoWarpCooldown player6spells 0
scoreboard players set healingTotemCooldown player6spells 0
scoreboard players set Spell_Points_P5 Spell_Points -1
scoreboard players set Spell_Points_P6 Spell_Points -1
scoreboard players set suddenDeath2 deaths 0
scoreboard players set side5spinball abilities -1
scoreboard players set side6spinball abilities -1
execute at @e[name=slot17,type=armor_stand] run kill @e[name=!slot17,type=!player,distance=..4]
execute at @e[name=slot18,type=armor_stand] run kill @e[name=!slot18,type=!player,distance=..4]
execute at @e[name=slot19,type=armor_stand] run kill @e[name=!slot19,type=!player,distance=..4]
execute at @e[name=slot20,type=armor_stand] run kill @e[name=!slot20,type=!player,distance=..4]
execute at @e[name=slot21,type=armor_stand] run kill @e[name=!slot21,type=!player,distance=..4]
execute at @e[name=slot22,type=armor_stand] run kill @e[name=!slot22,type=!player,distance=..4]
execute at @e[name=slot23,type=armor_stand] run kill @e[name=!slot23,type=!player,distance=..4]
execute at @e[name=slot24,type=armor_stand] run kill @e[name=!slot24,type=!player,distance=..4]
execute if score slot17EatenDuration abilities matches 1.. run execute at @e[name=slot17] run tp @n[distance=..4] ~ ~20 ~
execute if score slot18EatenDuration abilities matches 1.. run execute at @e[name=slot18] run tp @n[distance=..4] ~ ~20 ~
execute if score slot19EatenDuration abilities matches 1.. run execute at @e[name=slot19] run tp @n[distance=..4] ~ ~20 ~
execute if score slot20EatenDuration abilities matches 1.. run execute at @e[name=slot20] run tp @n[distance=..4] ~ ~20 ~
execute if score slot21EatenDuration abilities matches 1.. run execute at @e[name=slot21] run tp @n[distance=..4] ~ ~20 ~
execute if score slot22EatenDuration abilities matches 1.. run execute at @e[name=slot22] run tp @n[distance=..4] ~ ~20 ~
execute if score slot23EatenDuration abilities matches 1.. run execute at @e[name=slot23] run tp @n[distance=..4] ~ ~20 ~
execute if score slot24EatenDuration abilities matches 1.. run execute at @e[name=slot24] run tp @n[distance=..4] ~ ~20 ~
scoreboard players set slot17EatenDuration abilities 0
scoreboard players set slot18EatenDuration abilities 0
scoreboard players set slot19EatenDuration abilities 0
scoreboard players set slot20EatenDuration abilities 0
scoreboard players set slot21EatenDuration abilities 0
scoreboard players set slot22EatenDuration abilities 0
scoreboard players set slot23EatenDuration abilities 0
scoreboard players set slot24EatenDuration abilities 0
scoreboard players set spellbuffsp5 spells 0
scoreboard players set spellbuffsp6 spells 0
















