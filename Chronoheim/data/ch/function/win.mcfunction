scoreboard objectives remove Health_Game_1
scoreboard objectives remove Speed_Game_1
scoreboard objectives remove Cooldown_Game_1
scoreboard objectives remove Spell_Cooldown_Game_1
scoreboard players set slot1 hp 1
scoreboard players set slot2 hp 1
scoreboard players set slot3 hp 1
scoreboard players set slot4 hp 1
scoreboard players set slot5 hp 1
scoreboard players set slot6 hp 1
scoreboard players set slot7 hp 1
scoreboard players set slot8 hp 1
scoreboard players set character# slot1 0
scoreboard players set character# slot2 0
scoreboard players set character# slot3 0
scoreboard players set character# slot4 0
scoreboard players set character# slot5 0
scoreboard players set character# slot6 0
scoreboard players set character# slot7 0
scoreboard players set character# slot8 0
scoreboard players set cooldown slot1 0
scoreboard players set cooldown slot2 0
scoreboard players set cooldown slot3 0
scoreboard players set cooldown slot4 0
scoreboard players set cooldown slot5 0
scoreboard players set cooldown slot6 0
scoreboard players set cooldown slot7 0
scoreboard players set cooldown slot8 0
scoreboard players set speed slot1 0
scoreboard players set speed slot2 0
scoreboard players set speed slot3 0
scoreboard players set speed slot4 0
scoreboard players set speed slot5 0
scoreboard players set speed slot6 0
scoreboard players set speed slot7 0
scoreboard players set speed slot8 0
scoreboard players set drafttext drafts 0
scoreboard players set game1Ongoing ongoinggames 0
clear @a[tag=game1]
team leave @a[tag=game1]
tp @a[tag=game1] -32 51 1
tag @a[tag=game1] remove fireball
tag @a[tag=game1] remove chainlightning
tag @a[tag=game1] remove heal
tag @a[tag=game1] remove magicmissile
tag @a[tag=game1] remove ritualofblood
tag @a[tag=game1] remove frostbolt
tag @a[tag=game1] remove meteor
tag @a[tag=game1] remove shield
tag @a[tag=game1] remove shockorb
tag @a[tag=game1] remove witchbolt
tag @a[tag=game1] remove swiftness
tag @a[tag=game1] remove embrittle
tag @a[tag=game1] remove embiggen
tag @a[tag=game1] remove immolate
tag @a[tag=game1] remove evileye
tag @a[tag=game1] remove protectorsrune
tag @a[tag=game1] remove miracle
tag @a[tag=game1] remove miasma
tag @a[tag=game1] remove ward
tag @a[tag=game1] remove blizzard
tag @a[tag=game1] remove plague
tag @a[tag=game1] remove secondwind
tag @a[tag=game1] remove witchesbrew
tag @a[tag=game1] remove fontofwisdom
tag @a[tag=game1] remove fountainofyouth
tag @a[tag=game1] remove dragonforge
tag @a[tag=game1] remove overclock
tag @a[tag=game1] remove shiftingshadows
tag @a[tag=game1] remove chronowarp
tag @a[tag=game1] remove healingtotem
tag @a[tag=game1] remove healingrain
tag @a[tag=game1] remove decimate
tag @a[tag=game1] remove lifeleech
tag @a[tag=game1] remove cannibalize
tag @a[tag=game1] remove slimed
tag @a[tag=game1] remove vampiremark
tag @a[tag=game1] remove willowisp
tag @a[tag=game1] remove butchering
tag @a[tag=game1] remove spiderward
tag @a[tag=game1] remove darkritual
tag @a[tag=game1] remove raisedead
tag @a[tag=game1] remove monkeyspaw
tag @a[tag=game1] remove curseofbats

tag @a remove p1
tag @a remove p2
tag @a remove game1
scoreboard players set alivep1 deaths 3
scoreboard players set alivep2 deaths 3
scoreboard players set abilityusep1 booleans 0
scoreboard players set abilityusep2 booleans 0
scoreboard players set slot1isatk booleans 0
scoreboard players set slot2isatk booleans 0
scoreboard players set slot3isatk booleans 0
scoreboard players set slot4isatk booleans 0
scoreboard players set slot5isatk booleans 0
scoreboard players set slot6isatk booleans 0
scoreboard players set slot7isatk booleans 0
scoreboard players set slot8isatk booleans 0
scoreboard players set game1start ongoinggames 0
scoreboard players reset slot4 hp
scoreboard players reset slot8 hp
function ch:cleanseslot1
function ch:cleanseslot2
function ch:cleanseslot3
function ch:cleanseslot4
function ch:cleanseslot5
function ch:cleanseslot6
function ch:cleanseslot7
function ch:cleanseslot8
scoreboard players set durationSlot1 speedBuffs 0
scoreboard players set durationSlot2 speedBuffs 0
scoreboard players set durationSlot3 speedBuffs 0
scoreboard players set durationSlot4 speedBuffs 0
scoreboard players set durationSlot5 speedBuffs 0
scoreboard players set durationSlot6 speedBuffs 0
scoreboard players set durationSlot7 speedBuffs 0
scoreboard players set durationSlot8 speedBuffs 0
scoreboard players set durationSlot1 regen 0
scoreboard players set durationSlot2 regen 0
scoreboard players set durationSlot3 regen 0
scoreboard players set durationSlot4 regen 0
scoreboard players set durationSlot5 regen 0
scoreboard players set durationSlot6 regen 0
scoreboard players set durationSlot7 regen 0
scoreboard players set durationSlot8 regen 0
scoreboard players set durationSlot1 shield 0
scoreboard players set durationSlot2 shield 0
scoreboard players set durationSlot3 shield 0
scoreboard players set durationSlot4 shield 0
scoreboard players set durationSlot5 shield 0
scoreboard players set durationSlot6 shield 0
scoreboard players set durationSlot7 shield 0
scoreboard players set durationSlot8 shield 0
scoreboard players set buffDurationSlot1 atkmodifiers 0
scoreboard players set buffDurationSlot2 atkmodifiers 0
scoreboard players set buffDurationSlot3 atkmodifiers 0
scoreboard players set buffDurationSlot4 atkmodifiers 0
scoreboard players set buffDurationSlot5 atkmodifiers 0
scoreboard players set buffDurationSlot6 atkmodifiers 0
scoreboard players set buffDurationSlot7 atkmodifiers 0
scoreboard players set buffDurationSlot8 atkmodifiers 0
scoreboard players set debuffDurationSlot1 atkmodifiers 0
scoreboard players set debuffDurationSlot2 atkmodifiers 0
scoreboard players set debuffDurationSlot3 atkmodifiers 0
scoreboard players set debuffDurationSlot4 atkmodifiers 0
scoreboard players set debuffDurationSlot5 atkmodifiers 0
scoreboard players set debuffDurationSlot6 atkmodifiers 0
scoreboard players set debuffDurationSlot7 atkmodifiers 0
scoreboard players set debuffDurationSlot8 atkmodifiers 0
scoreboard players set slot1 stun 0
scoreboard players set slot2 stun 0
scoreboard players set slot3 stun 0
scoreboard players set slot4 stun 0
scoreboard players set slot5 stun 0
scoreboard players set slot6 stun 0
scoreboard players set slot7 stun 0
scoreboard players set slot8 stun 0
scoreboard players set disarmedslot1 booleaneffects 0
scoreboard players set disarmedslot2 booleaneffects 0
scoreboard players set disarmedslot3 booleaneffects 0
scoreboard players set disarmedslot4 booleaneffects 0
scoreboard players set disarmedslot5 booleaneffects 0
scoreboard players set disarmedslot6 booleaneffects 0
scoreboard players set disarmedslot7 booleaneffects 0
scoreboard players set disarmedslot8 booleaneffects 0
scoreboard players set nobasicatk slot1 0
scoreboard players set nobasicatk slot2 0
scoreboard players set nobasicatk slot3 0
scoreboard players set nobasicatk slot4 0
scoreboard players set nobasicatk slot5 0
scoreboard players set nobasicatk slot6 0
scoreboard players set nobasicatk slot7 0
scoreboard players set nobasicatk slot8 0
scoreboard players set atkmultiplier slot1 1
scoreboard players set atkmultiplier slot2 1
scoreboard players set atkmultiplier slot3 1
scoreboard players set atkmultiplier slot4 1
scoreboard players set atkmultiplier slot5 1
scoreboard players set atkmultiplier slot6 1
scoreboard players set atkmultiplier slot7 1
scoreboard players set atkmultiplier slot8 1
scoreboard players set ward slot1 0
scoreboard players set ward slot2 0
scoreboard players set ward slot3 0
scoreboard players set ward slot4 0
scoreboard players set ward slot5 0
scoreboard players set ward slot6 0
scoreboard players set ward slot7 0
scoreboard players set ward slot8 0
scoreboard players set doubleatk slot1 0
scoreboard players set doubleatk slot2 0
scoreboard players set doubleatk slot3 0
scoreboard players set doubleatk slot4 0
scoreboard players set doubleatk slot5 0
scoreboard players set doubleatk slot6 0
scoreboard players set doubleatk slot7 0
scoreboard players set doubleatk slot8 0
scoreboard players set useddoubleatk slot1 0
scoreboard players set useddoubleatk slot2 0
scoreboard players set useddoubleatk slot3 0
scoreboard players set useddoubleatk slot4 0
scoreboard players set useddoubleatk slot5 0
scoreboard players set useddoubleatk slot6 0
scoreboard players set useddoubleatk slot7 0
scoreboard players set useddoubleatk slot8 0
scoreboard players set splash slot1 0
scoreboard players set splash slot2 0
scoreboard players set splash slot3 0
scoreboard players set splash slot4 0
scoreboard players set splash slot5 0
scoreboard players set splash slot6 0
scoreboard players set splash slot7 0
scoreboard players set splash slot8 0
scoreboard players set lifesteal slot1 0
scoreboard players set lifesteal slot2 0
scoreboard players set lifesteal slot3 0
scoreboard players set lifesteal slot4 0
scoreboard players set lifesteal slot5 0
scoreboard players set lifesteal slot6 0
scoreboard players set lifesteal slot7 0
scoreboard players set lifesteal slot8 0
scoreboard players set flintsplashmode booleans 0
scoreboard players set invincibleSlot1 booleaneffects 0
scoreboard players set invincibleSlot2 booleaneffects 0
scoreboard players set invincibleSlot3 booleaneffects 0
scoreboard players set invincibleSlot4 booleaneffects 0
scoreboard players set invincibleSlot5 booleaneffects 0
scoreboard players set invincibleSlot6 booleaneffects 0
scoreboard players set invincibleSlot7 booleaneffects 0
scoreboard players set invincibleSlot8 booleaneffects 0
scoreboard players set fireballCooldown player1spells 0
scoreboard players set curse slot1 0
scoreboard players set curse slot2 0
scoreboard players set curse slot3 0
scoreboard players set curse slot4 0
scoreboard players set curse slot5 0
scoreboard players set curse slot6 0
scoreboard players set curse slot7 0
scoreboard players set curse slot8 0
scoreboard players set chainLightningCooldown player1spells 0
scoreboard players set healCooldown player1spells 0
scoreboard players set magicMissileCooldown player1spells 0
scoreboard players set ritualOfBloodCooldown player1spells 0
scoreboard players set frostboltCooldown player1spells 0
scoreboard players set shockOrbCooldown player1spells 0
scoreboard players set meteorCooldown player1spells 0
scoreboard players set shieldCooldown player1spells 0
scoreboard players set witchboltCooldown player1spells 0
scoreboard players set swiftnessCooldown player1spells 0
scoreboard players set embrittleCooldown player1spells 0
scoreboard players set embiggenCooldown player1spells 0
scoreboard players set immolateCooldown player1spells 0
scoreboard players set protectorsRuneCooldown player1spells 0
scoreboard players set evilEyeCooldown player1spells 0
scoreboard players set miasmaCooldown player1spells 0
scoreboard players set miracleCooldown player1spells 0
scoreboard players set wardCooldown player1spells 0
scoreboard players set blizzardCooldown player1spells 0
scoreboard players set plagueCooldown player1spells 0
scoreboard players set secondWindCooldown player1spells 0
scoreboard players set witchesBrewCooldown player1spells 0
scoreboard players set fontOfWisdomCooldown player1spells 0
scoreboard players set fountainOfYouthCooldown player1spells 0
scoreboard players set dragonforgeCooldown player1spells 0
scoreboard players set overclockCooldown player1spells 0
scoreboard players set shiftingShadowsCooldown player1spells 0
scoreboard players set chronoWarpCooldown player1spells 0
scoreboard players set healingTotemCooldown player1spells 0
scoreboard players set fireballCooldown player2spells 0
scoreboard players set chainLightningCooldown player2spells 0
scoreboard players set healCooldown player2spells 0
scoreboard players set magicMissileCooldown player2spells 0
scoreboard players set ritualOfBloodCooldown player2spells 0
scoreboard players set frostBoltCooldown player2spells 0
scoreboard players set shockOrbCooldown player2spells 0
scoreboard players set meteorCooldown player2spells 0
scoreboard players set shieldCooldown player2spells 0
scoreboard players set witchboltCooldown player2spells 0
scoreboard players set swiftnessCooldown player2spells 0
scoreboard players set embrittleCooldown player2spells 0
scoreboard players set embiggenCooldown player2spells 0
scoreboard players set immolateCooldown player2spells 0
scoreboard players set protectorsRuneCooldown player2spells 0
scoreboard players set evilEyeCooldown player2spells 0
scoreboard players set miasmaCooldown player2spells 0
scoreboard players set miracleCooldown player2spells 0
scoreboard players set wardCooldown player2spells 0
scoreboard players set blizzardCooldown player2spells 0
scoreboard players set plagueCooldown player2spells 0
scoreboard players set secondWindCooldown player2spells 0
scoreboard players set witchesBrewCooldown player2spells 0
scoreboard players set fontOfWisdomCooldown player2spells 0
scoreboard players set fountainOfYouthCooldown player2spells 0
scoreboard players set dragonforgeCooldown player2spells 0
scoreboard players set overclockCooldown player2spells 0
scoreboard players set shiftingShadowsCooldown player2spells 0
scoreboard players set chronoWarpCooldown player2spells 0
scoreboard players set healingTotemCooldown player2spells 0
scoreboard players set decimateCooldown player2spells 0
scoreboard players set lifeLeechCooldown player2spells 0
scoreboard players set healingRainCooldown player2spells 0
scoreboard players set decimateCooldown player1spells 0
scoreboard players set lifeLeechCooldown player1spells 0
scoreboard players set healingRainCooldown player1spells 0
scoreboard players set darkritual player1spells 0
scoreboard players set darkritual player2spells 0
scoreboard players set anubisSpCheckedP1 booleans 0
scoreboard players set anubisSpCheckedP2 booleans 0

scoreboard players set butcheringCooldown player1spells 0
scoreboard players set butcheringCooldown player2spells 0
scoreboard players set cannibalizeCooldown player1spells 0
scoreboard players set cannibalizeCooldown player2spells 0
scoreboard players set curseOfBatsCooldown player1spells 0
scoreboard players set curseOfBatsCooldown player2spells 0
scoreboard players set darkRitualCooldown player1spells 0
scoreboard players set darkRitualCooldown player2spells 0
scoreboard players set monkeysPawCooldown player1spells 0
scoreboard players set monkeysPawCooldown player2spells 0
scoreboard players set raiseDeadCooldown player1spells 0
scoreboard players set raiseDeadCooldown player2spells 0
scoreboard players set vampireMarkCooldown player1spells 0
scoreboard players set vampireMarkCooldown player2spells 0
scoreboard players set slimedCooldown player1spells 0
scoreboard players set slimedCooldown player2spells 0
scoreboard players set willOWispCooldown player1spells 0
scoreboard players set willOWispCooldown player2spells 0
scoreboard players set spiderWardCooldown player1spells 0
scoreboard players set spiderWardCooldown player2spells 0

scoreboard players set Spell_Points_P1 Spell_Points -1
scoreboard players set Spell_Points_P2 Spell_Points -1
scoreboard players set suddenDeath deaths 0
scoreboard players set side1spinball abilities -1
scoreboard players set side2spinball abilities -1
execute at @e[name=slot1,type=armor_stand] run kill @e[name=!slot1,type=!player,distance=..4]
execute at @e[name=slot2,type=armor_stand] run kill @e[name=!slot2,type=!player,distance=..4]
execute at @e[name=slot3,type=armor_stand] run kill @e[name=!slot3,type=!player,distance=..4]
execute at @e[name=slot4,type=armor_stand] run kill @e[name=!slot4,type=!player,distance=..4]
execute at @e[name=slot5,type=armor_stand] run kill @e[name=!slot5,type=!player,distance=..4]
execute at @e[name=slot6,type=armor_stand] run kill @e[name=!slot6,type=!player,distance=..4]
execute at @e[name=slot7,type=armor_stand] run kill @e[name=!slot7,type=!player,distance=..4]
execute at @e[name=slot8,type=armor_stand] run kill @e[name=!slot8,type=!player,distance=..4]
execute if score slot1EatenDuration abilities matches 1.. run execute at @e[name=slot1] run tp @n[distance=..4] ~ ~20 ~
execute if score slot2EatenDuration abilities matches 1.. run execute at @e[name=slot2] run tp @n[distance=..4] ~ ~20 ~
execute if score slot3EatenDuration abilities matches 1.. run execute at @e[name=slot3] run tp @n[distance=..4] ~ ~20 ~
execute if score slot4EatenDuration abilities matches 1.. run execute at @e[name=slot4] run tp @n[distance=..4] ~ ~20 ~
execute if score slot5EatenDuration abilities matches 1.. run execute at @e[name=slot5] run tp @n[distance=..4] ~ ~20 ~
execute if score slot6EatenDuration abilities matches 1.. run execute at @e[name=slot6] run tp @n[distance=..4] ~ ~20 ~
execute if score slot7EatenDuration abilities matches 1.. run execute at @e[name=slot7] run tp @n[distance=..4] ~ ~20 ~
execute if score slot8EatenDuration abilities matches 1.. run execute at @e[name=slot8] run tp @n[distance=..4] ~ ~20 ~
scoreboard players set slot1EatenDuration abilities 0
scoreboard players set slot2EatenDuration abilities 0
scoreboard players set slot3EatenDuration abilities 0
scoreboard players set slot4EatenDuration abilities 0
scoreboard players set slot5EatenDuration abilities 0
scoreboard players set slot6EatenDuration abilities 0
scoreboard players set slot7EatenDuration abilities 0
scoreboard players set slot8EatenDuration abilities 0
scoreboard players set spellbuffsp1 spells 0
scoreboard players set spellbuffsp2 spells 0
 scoreboard players set durationSlot1-5 fear 0
 scoreboard players set durationSlot1-6 fear 0
 scoreboard players set durationSlot1-7 fear 0
 scoreboard players set durationSlot1-8 fear 0
 scoreboard players set durationSlot2-5 fear 0
 scoreboard players set durationSlot2-6 fear 0
 scoreboard players set durationSlot2-7 fear 0
 scoreboard players set durationSlot2-8 fear 0
 scoreboard players set durationSlot3-5 fear 0
 scoreboard players set durationSlot3-6 fear 0
 scoreboard players set durationSlot3-7 fear 0
 scoreboard players set durationSlot3-8 fear 0
 scoreboard players set durationSlot4-5 fear 0
 scoreboard players set durationSlot4-6 fear 0
 scoreboard players set durationSlot4-7 fear 0
 scoreboard players set durationSlot4-8 fear 0
 scoreboard players set durationSlot5-1 fear 0
 scoreboard players set durationSlot5-2 fear 0
 scoreboard players set durationSlot5-3 fear 0
 scoreboard players set durationSlot5-4 fear 0
 scoreboard players set durationSlot6-1 fear 0
 scoreboard players set durationSlot6-2 fear 0
 scoreboard players set durationSlot6-3 fear 0
 scoreboard players set durationSlot6-4 fear 0
 scoreboard players set durationSlot7-1 fear 0
 scoreboard players set durationSlot7-2 fear 0
 scoreboard players set durationSlot7-3 fear 0
 scoreboard players set durationSlot7-4 fear 0
 scoreboard players set durationSlot8-1 fear 0
 scoreboard players set durationSlot8-2 fear 0
 scoreboard players set durationSlot8-3 fear 0
 scoreboard players set durationSlot8-4 fear 0
 scoreboard players set maxhp slot1 9999
 scoreboard players set maxhp slot2 9999
 scoreboard players set maxhp slot3 9999
 scoreboard players set maxhp slot4 9999
 scoreboard players set maxhp slot5 9999
 scoreboard players set maxhp slot6 9999
 scoreboard players set maxhp slot7 9999
 scoreboard players set maxhp slot8 9999
 scoreboard players set maxspeed slot1 9999
 scoreboard players set maxspeed slot2 9999
 scoreboard players set maxspeed slot3 9999
 scoreboard players set maxspeed slot4 9999
 scoreboard players set maxspeed slot5 9999
 scoreboard players set maxspeed slot6 9999
 scoreboard players set maxspeed slot7 9999
 scoreboard players set maxspeed slot8 9999
 scoreboard players set anubisUnusedP1 saves 0
 scoreboard players set anubisUnusedP2 saves 0
scoreboard players set curseDuration slot1 0
scoreboard players set curseDuration slot2 0
scoreboard players set curseDuration slot3 0
scoreboard players set curseDuration slot4 0
scoreboard players set curseDuration slot5 0
scoreboard players set curseDuration slot6 0
scoreboard players set curseDuration slot7 0
scoreboard players set curseDuration slot8 0












