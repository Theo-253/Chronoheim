clear @a[tag=game3] minecraft:target
clear @p[tag=p5]
clear @p[tag=p6]
#Cooldowns
execute if score slot17isatk booleans matches 1 run execute if score cooldown slot17 matches 1.. run scoreboard players remove cooldown slot17 1
execute if score slot18isatk booleans matches 1 run execute if score cooldown slot18 matches 1.. run scoreboard players remove cooldown slot18 1
execute if score slot19isatk booleans matches 1 run execute if score cooldown slot19 matches 1.. run scoreboard players remove cooldown slot19 1
execute if score slot20isatk booleans matches 1 run execute if score cooldown slot20 matches 1.. run scoreboard players remove cooldown slot20 1
execute if score slot21isatk booleans matches 1 run execute if score cooldown slot21 matches 1.. run scoreboard players remove cooldown slot21 1
execute if score slot22isatk booleans matches 1 run execute if score cooldown slot22 matches 1.. run scoreboard players remove cooldown slot22 1
execute if score slot23isatk booleans matches 1 run execute if score cooldown slot23 matches 1.. run scoreboard players remove cooldown slot23 1
execute if score slot24isatk booleans matches 1 run execute if score cooldown slot24 matches 1.. run scoreboard players remove cooldown slot24 1

#Poison Damage
execute if score slot17isatk booleans matches 1 run scoreboard players operation slot17 hp -= slot17Poison poison
execute if score slot18isatk booleans matches 1 run scoreboard players operation slot18 hp -= slot18Poison poison
execute if score slot19isatk booleans matches 1 run scoreboard players operation slot19 hp -= slot19Poison poison
execute if score slot20isatk booleans matches 1 run scoreboard players operation slot20 hp -= slot20Poison poison
execute if score slot21isatk booleans matches 1 run scoreboard players operation slot21 hp -= slot21Poison poison
execute if score slot22isatk booleans matches 1 run scoreboard players operation slot22 hp -= slot22Poison poison
execute if score slot23isatk booleans matches 1 run scoreboard players operation slot23 hp -= slot23Poison poison
execute if score slot24isatk booleans matches 1 run scoreboard players operation slot24 hp -= slot24Poison poison

#Poison Duration
execute if score slot17isatk booleans matches 1 run execute if score durationSlot17 poison matches 1.. run scoreboard players remove durationSlot17 poison 1
execute if score slot18isatk booleans matches 1 run execute if score durationSlot18 poison matches 1.. run scoreboard players remove durationSlot18 poison 1
execute if score slot19isatk booleans matches 1 run execute if score durationSlot19 poison matches 1.. run scoreboard players remove durationSlot19 poison 1
execute if score slot20isatk booleans matches 1 run execute if score durationSlot20 poison matches 1.. run scoreboard players remove durationSlot20 poison 1
execute if score slot21isatk booleans matches 1 run execute if score durationSlot21 poison matches 1.. run scoreboard players remove durationSlot21 poison 1
execute if score slot22isatk booleans matches 1 run execute if score durationSlot22 poison matches 1.. run scoreboard players remove durationSlot22 poison 1
execute if score slot23isatk booleans matches 1 run execute if score durationSlot23 poison matches 1.. run scoreboard players remove durationSlot23 poison 1
execute if score slot24isatk booleans matches 1 run execute if score durationSlot24 poison matches 1.. run scoreboard players remove durationSlot24 poison 1

#Burn Damage
execute if score burn3 burn matches 1 if score slot17isatk booleans matches 1 run scoreboard players operation slot17 hp -= slot17Burn burn
execute if score burn3 burn matches 1 if score slot18isatk booleans matches 1 run scoreboard players operation slot18 hp -= slot18Burn burn
execute if score burn3 burn matches 1 if score slot19isatk booleans matches 1 run scoreboard players operation slot19 hp -= slot19Burn burn
execute if score burn3 burn matches 1 if score slot20isatk booleans matches 1 run scoreboard players operation slot20 hp -= slot20Burn burn
execute if score burn3 burn matches 1 if score slot21isatk booleans matches 1 run scoreboard players operation slot21 hp -= slot21Burn burn
execute if score burn3 burn matches 1 if score slot22isatk booleans matches 1 run scoreboard players operation slot22 hp -= slot22Burn burn
execute if score burn3 burn matches 1 if score slot23isatk booleans matches 1 run scoreboard players operation slot23 hp -= slot23Burn burn
execute if score burn3 burn matches 1 if score slot24isatk booleans matches 1 run scoreboard players operation slot24 hp -= slot24Burn burn

#Burn Duration
scoreboard players set burn3 burn 0
execute if score slot17isatk booleans matches 1 run execute if score durationSlot17 burn matches 1.. run scoreboard players remove durationSlot17 burn 1
execute if score slot18isatk booleans matches 1 run execute if score durationSlot18 burn matches 1.. run scoreboard players remove durationSlot18 burn 1
execute if score slot19isatk booleans matches 1 run execute if score durationSlot19 burn matches 1.. run scoreboard players remove durationSlot19 burn 1
execute if score slot20isatk booleans matches 1 run execute if score durationSlot20 burn matches 1.. run scoreboard players remove durationSlot20 burn 1
execute if score slot21isatk booleans matches 1 run execute if score durationSlot21 burn matches 1.. run scoreboard players remove durationSlot21 burn 1
execute if score slot22isatk booleans matches 1 run execute if score durationSlot22 burn matches 1.. run scoreboard players remove durationSlot22 burn 1
execute if score slot23isatk booleans matches 1 run execute if score durationSlot23 burn matches 1.. run scoreboard players remove durationSlot23 burn 1
execute if score slot24isatk booleans matches 1 run execute if score durationSlot24 burn matches 1.. run scoreboard players remove durationSlot24 burn 1

#Speed Debuff Duration
execute if score slot17isatk booleans matches 1 run execute if score durationSlot17 speedDebuffs matches 1.. run scoreboard players remove durationSlot17 speedDebuffs 1
execute if score slot18isatk booleans matches 1 run execute if score durationSlot18 speedDebuffs matches 1.. run scoreboard players remove durationSlot18 speedDebuffs 1
execute if score slot19isatk booleans matches 1 run execute if score durationSlot19 speedDebuffs matches 1.. run scoreboard players remove durationSlot19 speedDebuffs 1
execute if score slot20isatk booleans matches 1 run execute if score durationSlot20 speedDebuffs matches 1.. run scoreboard players remove durationSlot20 speedDebuffs 1
execute if score slot21isatk booleans matches 1 run execute if score durationSlot21 speedDebuffs matches 1.. run scoreboard players remove durationSlot21 speedDebuffs 1
execute if score slot22isatk booleans matches 1 run execute if score durationSlot22 speedDebuffs matches 1.. run scoreboard players remove durationSlot22 speedDebuffs 1
execute if score slot23isatk booleans matches 1 run execute if score durationSlot23 speedDebuffs matches 1.. run scoreboard players remove durationSlot23 speedDebuffs 1
execute if score slot24isatk booleans matches 1 run execute if score durationSlot24 speedDebuffs matches 1.. run scoreboard players remove durationSlot24 speedDebuffs 1

#Speed Buff Duration
execute if score slot17isatk booleans matches 1 run execute if score durationSlot17 speedBuffs matches 1.. run scoreboard players remove durationSlot17 speedBuffs 1
execute if score slot18isatk booleans matches 1 run execute if score durationSlot18 speedBuffs matches 1.. run scoreboard players remove durationSlot18 speedBuffs 1
execute if score slot19isatk booleans matches 1 run execute if score durationSlot19 speedBuffs matches 1.. run scoreboard players remove durationSlot19 speedBuffs 1
execute if score slot20isatk booleans matches 1 run execute if score durationSlot20 speedBuffs matches 1.. run scoreboard players remove durationSlot20 speedBuffs 1
execute if score slot21isatk booleans matches 1 run execute if score durationSlot21 speedBuffs matches 1.. run scoreboard players remove durationSlot21 speedBuffs 1
execute if score slot22isatk booleans matches 1 run execute if score durationSlot22 speedBuffs matches 1.. run scoreboard players remove durationSlot22 speedBuffs 1
execute if score slot23isatk booleans matches 1 run execute if score durationSlot23 speedBuffs matches 1.. run scoreboard players remove durationSlot23 speedBuffs 1
execute if score slot24isatk booleans matches 1 run execute if score durationSlot24 speedBuffs matches 1.. run scoreboard players remove durationSlot24 speedBuffs 1

#Attack Buff Duration
execute if score slot17isatk booleans matches 1 run execute if score buffDurationSlot17 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot17 atkmodifiers 1
execute if score slot18isatk booleans matches 1 run execute if score buffDurationSlot18 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot18 atkmodifiers 1
execute if score slot19isatk booleans matches 1 run execute if score buffDurationSlot19 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot19 atkmodifiers 1
execute if score slot20isatk booleans matches 1 run execute if score buffDurationSlot20 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot20 atkmodifiers 1
execute if score slot21isatk booleans matches 1 run execute if score buffDurationSlot21 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot21 atkmodifiers 1
execute if score slot22isatk booleans matches 1 run execute if score buffDurationSlot22 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot22 atkmodifiers 1
execute if score slot23isatk booleans matches 1 run execute if score buffDurationSlot23 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot23 atkmodifiers 1
execute if score slot24isatk booleans matches 1 run execute if score buffDurationSlot16 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot16 atkmodifiers 1

#Attack Debuff Duration
execute if score slot17isatk booleans matches 1 run execute if score debuffDurationSlot17 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot17 atkmodifiers 1
execute if score slot18isatk booleans matches 1 run execute if score debuffDurationSlot18 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot18 atkmodifiers 1
execute if score slot19isatk booleans matches 1 run execute if score debuffDurationSlot19 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot19 atkmodifiers 1
execute if score slot20isatk booleans matches 1 run execute if score debuffDurationSlot20 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot20 atkmodifiers 1
execute if score slot21isatk booleans matches 1 run execute if score debuffDurationSlot21 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot21 atkmodifiers 1
execute if score slot22isatk booleans matches 1 run execute if score debuffDurationSlot22 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot22 atkmodifiers 1
execute if score slot23isatk booleans matches 1 run execute if score debuffDurationSlot23 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot23 atkmodifiers 1
execute if score slot24isatk booleans matches 1 run execute if score debuffDurationSlot16 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot16 atkmodifiers 1

#Regen Healing
execute if score slot17isatk booleans matches 1 if score slot17bleeding booleaneffects matches 0 run scoreboard players operation slot17 hp += slot17Regen regen
execute if score slot18isatk booleans matches 1 if score slot18bleeding booleaneffects matches 0 run scoreboard players operation slot18 hp += slot18Regen regen
execute if score slot19isatk booleans matches 1 if score slot19bleeding booleaneffects matches 0 run scoreboard players operation slot19 hp += slot19Regen regen
execute if score slot20isatk booleans matches 1 if score slot20bleeding booleaneffects matches 0 run scoreboard players operation slot20 hp += slot20Regen regen
execute if score slot21isatk booleans matches 1 if score slot21bleeding booleaneffects matches 0 run scoreboard players operation slot21 hp += slot21Regen regen
execute if score slot22isatk booleans matches 1 if score slot22bleeding booleaneffects matches 0 run scoreboard players operation slot22 hp += slot22Regen regen
execute if score slot23isatk booleans matches 1 if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += slot23Regen regen
execute if score slot24isatk booleans matches 1 if score slot24bleeding booleaneffects matches 0 run scoreboard players operation slot24 hp += slot24Regen regen

#Regen Duration
execute if score slot17isatk booleans matches 1 run execute if score durationSlot17 regen matches 1.. run scoreboard players remove durationSlot17 regen 1
execute if score slot18isatk booleans matches 1 run execute if score durationSlot18 regen matches 1.. run scoreboard players remove durationSlot18 regen 1
execute if score slot19isatk booleans matches 1 run execute if score durationSlot19 regen matches 1.. run scoreboard players remove durationSlot19 regen 1
execute if score slot20isatk booleans matches 1 run execute if score durationSlot20 regen matches 1.. run scoreboard players remove durationSlot20 regen 1
execute if score slot21isatk booleans matches 1 run execute if score durationSlot21 regen matches 1.. run scoreboard players remove durationSlot21 regen 1
execute if score slot22isatk booleans matches 1 run execute if score durationSlot22 regen matches 1.. run scoreboard players remove durationSlot22 regen 1
execute if score slot23isatk booleans matches 1 run execute if score durationSlot23 regen matches 1.. run scoreboard players remove durationSlot23 regen 1
execute if score slot24isatk booleans matches 1 run execute if score durationSlot24 regen matches 1.. run scoreboard players remove durationSlot24 regen 1

#Shield Duration
execute if score slot17isatk booleans matches 1 run execute if score durationSlot17 shield matches 1.. run scoreboard players remove durationSlot17 shield 1
execute if score slot18isatk booleans matches 1 run execute if score durationSlot18 shield matches 1.. run scoreboard players remove durationSlot18 shield 1
execute if score slot19isatk booleans matches 1 run execute if score durationSlot19 shield matches 1.. run scoreboard players remove durationSlot19 shield 1
execute if score slot20isatk booleans matches 1 run execute if score durationSlot20 shield matches 1.. run scoreboard players remove durationSlot20 shield 1
execute if score slot21isatk booleans matches 1 run execute if score durationSlot21 shield matches 1.. run scoreboard players remove durationSlot21 shield 1
execute if score slot22isatk booleans matches 1 run execute if score durationSlot22 shield matches 1.. run scoreboard players remove durationSlot22 shield 1
execute if score slot23isatk booleans matches 1 run execute if score durationSlot23 shield matches 1.. run scoreboard players remove durationSlot23 shield 1
execute if score slot24isatk booleans matches 1 run execute if score durationSlot24 shield matches 1.. run scoreboard players remove durationSlot24 shield 1

#Taunt Duration
execute if score slot17isatk booleans matches 1 run execute if score durationSlot17 taunt matches 1.. run scoreboard players remove durationSlot17 taunt 1
execute if score slot18isatk booleans matches 1 run execute if score durationSlot18 taunt matches 1.. run scoreboard players remove durationSlot18 taunt 1
execute if score slot19isatk booleans matches 1 run execute if score durationSlot19 taunt matches 1.. run scoreboard players remove durationSlot19 taunt 1
execute if score slot20isatk booleans matches 1 run execute if score durationSlot20 taunt matches 1.. run scoreboard players remove durationSlot20 taunt 1
execute if score slot21isatk booleans matches 1 run execute if score durationSlot21 taunt matches 1.. run scoreboard players remove durationSlot21 taunt 1
execute if score slot22isatk booleans matches 1 run execute if score durationSlot22 taunt matches 1.. run scoreboard players remove durationSlot22 taunt 1
execute if score slot23isatk booleans matches 1 run execute if score durationSlot23 taunt matches 1.. run scoreboard players remove durationSlot23 taunt 1
execute if score slot24isatk booleans matches 1 run execute if score durationSlot24 taunt matches 1.. run scoreboard players remove durationSlot24 taunt 1

#Fear Duration
execute if score slot17isatk booleans matches 1 run execute if score durationSlot21-17 fear matches 1.. run scoreboard players remove durationSlot21-17 fear 1
execute if score slot17isatk booleans matches 1 run execute if score durationSlot22-17 fear matches 1.. run scoreboard players remove durationSlot22-17 fear 1
execute if score slot17isatk booleans matches 1 run execute if score durationSlot23-17 fear matches 1.. run scoreboard players remove durationSlot23-17 fear 1
execute if score slot17isatk booleans matches 1 run execute if score durationSlot24-17 fear matches 1.. run scoreboard players remove durationSlot24-17 fear 1
execute if score slot18isatk booleans matches 1 run execute if score durationSlot21-18 fear matches 1.. run scoreboard players remove durationSlot21-18 fear 1
execute if score slot18isatk booleans matches 1 run execute if score durationSlot22-18 fear matches 1.. run scoreboard players remove durationSlot22-18 fear 1
execute if score slot18isatk booleans matches 1 run execute if score durationSlot23-18 fear matches 1.. run scoreboard players remove durationSlot23-18 fear 1
execute if score slot18isatk booleans matches 1 run execute if score durationSlot24-18 fear matches 1.. run scoreboard players remove durationSlot24-18 fear 1
execute if score slot19isatk booleans matches 1 run execute if score durationSlot21-19 fear matches 1.. run scoreboard players remove durationSlot21-19 fear 1
execute if score slot19isatk booleans matches 1 run execute if score durationSlot22-19 fear matches 1.. run scoreboard players remove durationSlot22-19 fear 1
execute if score slot19isatk booleans matches 1 run execute if score durationSlot23-19 fear matches 1.. run scoreboard players remove durationSlot23-19 fear 1
execute if score slot19isatk booleans matches 1 run execute if score durationSlot24-19 fear matches 1.. run scoreboard players remove durationSlot24-19 fear 1
execute if score slot20isatk booleans matches 1 run execute if score durationSlot21-20 fear matches 1.. run scoreboard players remove durationSlot21-20 fear 1
execute if score slot20isatk booleans matches 1 run execute if score durationSlot22-20 fear matches 1.. run scoreboard players remove durationSlot22-20 fear 1
execute if score slot20isatk booleans matches 1 run execute if score durationSlot23-20 fear matches 1.. run scoreboard players remove durationSlot23-20 fear 1
execute if score slot20isatk booleans matches 1 run execute if score durationSlot24-20 fear matches 1.. run scoreboard players remove durationSlot24-20 fear 1
execute if score slot21isatk booleans matches 1 run execute if score durationSlot17-21 fear matches 1.. run scoreboard players remove durationSlot17-21 fear 1
execute if score slot21isatk booleans matches 1 run execute if score durationSlot18-21 fear matches 1.. run scoreboard players remove durationSlot18-21 fear 1
execute if score slot21isatk booleans matches 1 run execute if score durationSlot19-21 fear matches 1.. run scoreboard players remove durationSlot19-21 fear 1
execute if score slot21isatk booleans matches 1 run execute if score durationSlot20-21 fear matches 1.. run scoreboard players remove durationSlot20-21 fear 1
execute if score slot22isatk booleans matches 1 run execute if score durationSlot17-22 fear matches 1.. run scoreboard players remove durationSlot17-22 fear 1
execute if score slot22isatk booleans matches 1 run execute if score durationSlot18-22 fear matches 1.. run scoreboard players remove durationSlot18-22 fear 1
execute if score slot22isatk booleans matches 1 run execute if score durationSlot19-22 fear matches 1.. run scoreboard players remove durationSlot19-22 fear 1
execute if score slot22isatk booleans matches 1 run execute if score durationSlot20-22 fear matches 1.. run scoreboard players remove durationSlot20-22 fear 1
execute if score slot23isatk booleans matches 1 run execute if score durationSlot17-23 fear matches 1.. run scoreboard players remove durationSlot17-23 fear 1
execute if score slot23isatk booleans matches 1 run execute if score durationSlot18-23 fear matches 1.. run scoreboard players remove durationSlot18-23 fear 1
execute if score slot23isatk booleans matches 1 run execute if score durationSlot19-23 fear matches 1.. run scoreboard players remove durationSlot19-23 fear 1
execute if score slot23isatk booleans matches 1 run execute if score durationSlot20-23 fear matches 1.. run scoreboard players remove durationSlot20-23 fear 1
execute if score slot24isatk booleans matches 1 run execute if score durationSlot17-24 fear matches 1.. run scoreboard players remove durationSlot17-24 fear 1
execute if score slot24isatk booleans matches 1 run execute if score durationSlot18-24 fear matches 1.. run scoreboard players remove durationSlot18-24 fear 1
execute if score slot24isatk booleans matches 1 run execute if score durationSlot19-24 fear matches 1.. run scoreboard players remove durationSlot19-24 fear 1
execute if score slot24isatk booleans matches 1 run execute if score durationSlot20-24 fear matches 1.. run scoreboard players remove durationSlot20-24 fear 1

#Disease Damage
execute if score slot17isatk booleans matches 1 run scoreboard players operation slot17 hp -= slot17Disease disease
execute if score slot18isatk booleans matches 1 run scoreboard players operation slot18 hp -= slot18Disease disease
execute if score slot19isatk booleans matches 1 run scoreboard players operation slot19 hp -= slot19Disease disease
execute if score slot20isatk booleans matches 1 run scoreboard players operation slot20 hp -= slot20Disease disease
execute if score slot21isatk booleans matches 1 run scoreboard players operation slot21 hp -= slot21Disease disease
execute if score slot22isatk booleans matches 1 run scoreboard players operation slot22 hp -= slot22Disease disease
execute if score slot23isatk booleans matches 1 run scoreboard players operation slot23 hp -= slot23Disease disease
execute if score slot24isatk booleans matches 1 run scoreboard players operation slot24 hp -= slot24Disease disease

#gatsby consume (visual)
execute if score slot17isatk booleans matches 1 run execute if score slot17EatenDuration abilities matches 1 at @e[name=slot17] run execute at @e[distance=..4,type=!minecraft:player] run tp @n[type=!minecraft:player,distance=..4] ~ ~20 ~
execute if score slot18isatk booleans matches 1 run execute if score slot18EatenDuration abilities matches 1 at @e[name=slot18] run execute at @e[distance=..4,type=!minecraft:player] run tp @n[type=!minecraft:player,distance=..4] ~ ~20 ~
execute if score slot19isatk booleans matches 1 run execute if score slot19EatenDuration abilities matches 1 at @e[name=slot19] run execute at @e[distance=..4,type=!minecraft:player] run tp @n[type=!minecraft:player,distance=..4] ~ ~20 ~
execute if score slot20isatk booleans matches 1 run execute if score slot20EatenDuration abilities matches 1 at @e[name=slot20] run execute at @e[distance=..4,type=!minecraft:player] run tp @n[type=!minecraft:player,distance=..4] ~ ~20 ~
execute if score slot21isatk booleans matches 1 run execute if score slot21EatenDuration abilities matches 1 at @e[name=slot21] run execute at @e[distance=..4,type=!minecraft:player] run tp @n[type=!minecraft:player,distance=..4] ~ ~20 ~
execute if score slot22isatk booleans matches 1 run execute if score slot22EatenDuration abilities matches 1 at @e[name=slot22] run execute at @e[distance=..4,type=!minecraft:player] run tp @n[type=!minecraft:player,distance=..4] ~ ~20 ~
execute if score slot23isatk booleans matches 1 run execute if score slot23EatenDuration abilities matches 1 at @e[name=slot23] run execute at @e[distance=..4,type=!minecraft:player] run tp @n[type=!minecraft:player,distance=..4] ~ ~20 ~
execute if score slot24isatk booleans matches 1 run execute if score slot24EatenDuration abilities matches 1 at @e[name=slot24] run execute at @e[distance=..4,type=!minecraft:player] run tp @n[type=!minecraft:player,distance=..4] ~ ~20 ~
execute if score slot17isatk booleans matches 1 run execute if score slot17EatenDuration abilities matches 1.. run scoreboard players remove slot17EatenDuration abilities 1
execute if score slot18isatk booleans matches 1 run execute if score slot18EatenDuration abilities matches 1.. run scoreboard players remove slot18EatenDuration abilities 1
execute if score slot19isatk booleans matches 1 run execute if score slot19EatenDuration abilities matches 1.. run scoreboard players remove slot19EatenDuration abilities 1
execute if score slot20isatk booleans matches 1 run execute if score slot20EatenDuration abilities matches 1.. run scoreboard players remove slot20EatenDuration abilities 1
execute if score slot21isatk booleans matches 1 run execute if score slot21EatenDuration abilities matches 1.. run scoreboard players remove slot21EatenDuration abilities 1
execute if score slot22isatk booleans matches 1 run execute if score slot22EatenDuration abilities matches 1.. run scoreboard players remove slot22EatenDuration abilities 1
execute if score slot23isatk booleans matches 1 run execute if score slot23EatenDuration abilities matches 1.. run scoreboard players remove slot23EatenDuration abilities 1
execute if score slot24isatk booleans matches 1 run execute if score slot24EatenDuration abilities matches 1.. run scoreboard players remove slot24EatenDuration abilities 1

#Mark Duration
#execute if score slot17isatk booleans matches 1 run execute if score durationSlot17 mark matches 1.. run scoreboard players remove durationSlot17 mark 1
#execute if score slot18isatk booleans matches 1 run execute if score durationSlot18 mark matches 1.. run scoreboard players remove durationSlot18 mark 1
#execute if score slot19isatk booleans matches 1 run execute if score durationSlot19 mark matches 1.. run scoreboard players remove durationSlot19 mark 1
#execute if score slot20isatk booleans matches 1 run execute if score durationSlot20 mark matches 1.. run scoreboard players remove durationSlot20 mark 1
#execute if score slot21isatk booleans matches 1 run execute if score durationSlot21 mark matches 1.. run scoreboard players remove durationSlot21 mark 1
#execute if score slot22isatk booleans matches 1 run execute if score durationSlot22 mark matches 1.. run scoreboard players remove durationSlot22 mark 1
#execute if score slot23isatk booleans matches 1 run execute if score durationSlot23 mark matches 1.. run scoreboard players remove durationSlot23 mark 1
#execute if score slot24isatk booleans matches 1 run execute if score durationSlot24 mark matches 1.. run scoreboard players remove durationSlot24 mark 1

#bleed duration
execute if score slot17isatk booleans matches 1 run execute if score slot17bleeding booleaneffects matches 1.. run scoreboard players remove slot17bleeding booleaneffects 1
execute if score slot18isatk booleans matches 1 run execute if score slot18bleeding booleaneffects matches 1.. run scoreboard players remove slot18bleeding booleaneffects 1
execute if score slot19isatk booleans matches 1 run execute if score slot19bleeding booleaneffects matches 1.. run scoreboard players remove slot19bleeding booleaneffects 1
execute if score slot20isatk booleans matches 1 run execute if score slot20bleeding booleaneffects matches 1.. run scoreboard players remove slot20bleeding booleaneffects 1
execute if score slot21isatk booleans matches 1 run execute if score slot21bleeding booleaneffects matches 1.. run scoreboard players remove slot21bleeding booleaneffects 1
execute if score slot22isatk booleans matches 1 run execute if score slot22bleeding booleaneffects matches 1.. run scoreboard players remove slot22bleeding booleaneffects 1
execute if score slot23isatk booleans matches 1 run execute if score slot23bleeding booleaneffects matches 1.. run scoreboard players remove slot23bleeding booleaneffects 1
execute if score slot24isatk booleans matches 1 run execute if score slot24bleeding booleaneffects matches 1.. run scoreboard players remove slot24bleeding booleaneffects 1

#disarm duration
execute if score slot17isatk booleans matches 1 run execute if score disarmedslot17 booleaneffects matches 1.. run scoreboard players remove disarmedslot17 booleaneffects 1
execute if score slot18isatk booleans matches 1 run execute if score disarmedslot18 booleaneffects matches 1.. run scoreboard players remove disarmedslot18 booleaneffects 1
execute if score slot19isatk booleans matches 1 run execute if score disarmedslot19 booleaneffects matches 1.. run scoreboard players remove disarmedslot19 booleaneffects 1
execute if score slot20isatk booleans matches 1 run execute if score disarmedslot20 booleaneffects matches 1.. run scoreboard players remove disarmedslot20 booleaneffects 1
execute if score slot21isatk booleans matches 1 run execute if score disarmedslot21 booleaneffects matches 1.. run scoreboard players remove disarmedslot21 booleaneffects 1
execute if score slot22isatk booleans matches 1 run execute if score disarmedslot22 booleaneffects matches 1.. run scoreboard players remove disarmedslot22 booleaneffects 1
execute if score slot23isatk booleans matches 1 run execute if score disarmedslot23 booleaneffects matches 1.. run scoreboard players remove disarmedslot23 booleaneffects 1
execute if score slot24isatk booleans matches 1 run execute if score disarmedslot24 booleaneffects matches 1.. run scoreboard players remove disarmedslot24 booleaneffects 1

#invincibility duration
execute if score slot17isatk booleans matches 1 run execute if score invincibleSlot17 booleaneffects matches 1.. run scoreboard players remove invincibleSlot17 booleaneffects 1
execute if score slot18isatk booleans matches 1 run execute if score invincibleSlot18 booleaneffects matches 1.. run scoreboard players remove invincibleSlot18 booleaneffects 1
execute if score slot19isatk booleans matches 1 run execute if score invincibleSlot19 booleaneffects matches 1.. run scoreboard players remove invincibleSlot19 booleaneffects 1
execute if score slot20isatk booleans matches 1 run execute if score invincibleSlot20 booleaneffects matches 1.. run scoreboard players remove invincibleSlot20 booleaneffects 1
execute if score slot21isatk booleans matches 1 run execute if score invincibleSlot21 booleaneffects matches 1.. run scoreboard players remove invincibleSlot21 booleaneffects 1
execute if score slot22isatk booleans matches 1 run execute if score invincibleSlot22 booleaneffects matches 1.. run scoreboard players remove invincibleSlot22 booleaneffects 1
execute if score slot23isatk booleans matches 1 run execute if score invincibleSlot23 booleaneffects matches 1.. run scoreboard players remove invincibleSlot23 booleaneffects 1
execute if score slot24isatk booleans matches 1 run execute if score invincibleSlot16 booleaneffects matches 1.. run scoreboard players remove invincibleSlot16 booleaneffects 1

#Ward Duration
execute if score slot17isatk booleans matches 1 run execute if score durationSlot17 wards matches 1.. run scoreboard players remove durationSlot17 wards 1
execute if score slot18isatk booleans matches 1 run execute if score durationSlot18 wards matches 1.. run scoreboard players remove durationSlot18 wards 1
execute if score slot19isatk booleans matches 1 run execute if score durationSlot19 wards matches 1.. run scoreboard players remove durationSlot19 wards 1
execute if score slot20isatk booleans matches 1 run execute if score durationSlot20 wards matches 1.. run scoreboard players remove durationSlot20 wards 1
execute if score slot21isatk booleans matches 1 run execute if score durationSlot21 wards matches 1.. run scoreboard players remove durationSlot21 wards 1
execute if score slot22isatk booleans matches 1 run execute if score durationSlot22 wards matches 1.. run scoreboard players remove durationSlot22 wards 1
execute if score slot23isatk booleans matches 1 run execute if score durationSlot23 wards matches 1.. run scoreboard players remove durationSlot23 wards 1
execute if score slot24isatk booleans matches 1 run execute if score durationSlot24 wards matches 1.. run scoreboard players remove durationSlot24 wards 1

#dillo
execute if score slot17isatk booleans matches 1 if score side5spinball abilities matches 0.. if score character# slot17 matches 10 run scoreboard players add side5spinball abilities 1
execute if score slot18isatk booleans matches 1 if score side5spinball abilities matches 0.. if score character# slot18 matches 10 run scoreboard players add side5spinball abilities 1
execute if score slot19isatk booleans matches 1 if score side5spinball abilities matches 0.. if score character# slot19 matches 10 run scoreboard players add side5spinball abilities 1
execute if score slot21isatk booleans matches 1 if score side6spinball abilities matches 0.. if score character# slot21 matches 10 run scoreboard players add side6spinball abilities 1
execute if score slot22isatk booleans matches 1 if score side6spinball abilities matches 0.. if score character# slot22 matches 10 run scoreboard players add side6spinball abilities 1
execute if score slot23isatk booleans matches 1 if score side6spinball abilities matches 0.. if score character# slot23 matches 10 run scoreboard players add side6spinball abilities 1

execute if score slot17isatk booleans matches 1 if score side5spinball abilities matches 10.. if score character# slot17 matches 10 run execute at @n[name=slot17,type=armor_stand] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.4 40
execute if score slot18isatk booleans matches 1 if score side5spinball abilities matches 10.. if score character# slot18 matches 10 run execute at @n[name=slot18,type=armor_stand] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.4 40
execute if score slot19isatk booleans matches 1 if score side5spinball abilities matches 10.. if score character# slot19 matches 10 run execute at @n[name=slot19,type=armor_stand] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.4 40
execute if score slot21isatk booleans matches 1 if score side6spinball abilities matches 10.. if score character# slot21 matches 10 run execute at @n[name=slot21,type=armor_stand] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.4 40
execute if score slot22isatk booleans matches 1 if score side6spinball abilities matches 10.. if score character# slot22 matches 10 run execute at @n[name=slot22,type=armor_stand] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.4 40
execute if score slot23isatk booleans matches 1 if score side6spinball abilities matches 10.. if score character# slot23 matches 10 run execute at @n[name=slot23,type=armor_stand] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.4 40

execute if score slot17isatk booleans matches 1 if score side5spinball abilities matches 0..9 if score character# slot17 matches 10 run execute at @n[name=slot17,type=armor_stand] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.2 20
execute if score slot18isatk booleans matches 1 if score side5spinball abilities matches 0..9 if score character# slot18 matches 10 run execute at @n[name=slot18,type=armor_stand] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.2 20
execute if score slot19isatk booleans matches 1 if score side5spinball abilities matches 0..9 if score character# slot19 matches 10 run execute at @n[name=slot19,type=armor_stand] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.2 20
execute if score slot21isatk booleans matches 1 if score side6spinball abilities matches 0..9 if score character# slot21 matches 10 run execute at @n[name=slot21,type=armor_stand] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.2 20
execute if score slot22isatk booleans matches 1 if score side6spinball abilities matches 0..9 if score character# slot22 matches 10 run execute at @n[name=slot22,type=armor_stand] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.2 20
execute if score slot23isatk booleans matches 1 if score side6spinball abilities matches 0..9 if score character# slot23 matches 10 run execute at @n[name=slot23,type=armor_stand] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.2 20

#Gabriel
execute if score slot18 hp matches 1.. if score character# slot17 matches 22 if score durationSlot17 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot17 shield += gabrielShieldDuration abilityStats
execute if score slot19 hp matches 1.. if score character# slot17 matches 22 if score durationSlot17 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot17 shield += gabrielShieldDuration abilityStats
execute if score slot17 hp matches 1.. if score character# slot18 matches 22 if score durationSlot18 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot18 shield += gabrielShieldDuration abilityStats
execute if score slot19 hp matches 1.. if score character# slot18 matches 22 if score durationSlot18 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot18 shield += gabrielShieldDuration abilityStats
execute if score slot17 hp matches 1.. if score character# slot19 matches 22 if score durationSlot19 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot19 shield += gabrielShieldDuration abilityStats
execute if score slot18 hp matches 1.. if score character# slot19 matches 22 if score durationSlot19 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot19 shield += gabrielShieldDuration abilityStats
execute if score slot22 hp matches 1.. if score character# slot21 matches 22 if score durationSlot21 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot21 shield += gabrielShieldDuration abilityStats
execute if score slot23 hp matches 1.. if score character# slot21 matches 22 if score durationSlot21 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot21 shield += gabrielShieldDuration abilityStats
execute if score slot21 hp matches 1.. if score character# slot22 matches 22 if score durationSlot22 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot22 shield += gabrielShieldDuration abilityStats
execute if score slot23 hp matches 1.. if score character# slot22 matches 22 if score durationSlot22 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot22 shield += gabrielShieldDuration abilityStats
execute if score slot21 hp matches 1.. if score character# slot23 matches 22 if score durationSlot23 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot23 shield += gabrielShieldDuration abilityStats
execute if score slot22 hp matches 1.. if score character# slot23 matches 22 if score durationSlot23 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot23 shield += gabrielShieldDuration abilityStats
execute if score slot18 hp matches 1.. if score character# slot17 matches 22 run scoreboard players operation shield slot17 += gabrielShield abilityStats
execute if score slot19 hp matches 1.. if score character# slot17 matches 22 run scoreboard players operation shield slot17 += gabrielShield abilityStats
execute if score slot17 hp matches 1.. if score character# slot18 matches 22 run scoreboard players operation shield slot18 += gabrielShield abilityStats
execute if score slot19 hp matches 1.. if score character# slot18 matches 22 run scoreboard players operation shield slot18 += gabrielShield abilityStats
execute if score slot17 hp matches 1.. if score character# slot19 matches 22 run scoreboard players operation shield slot19 += gabrielShield abilityStats
execute if score slot18 hp matches 1.. if score character# slot19 matches 22 run scoreboard players operation shield slot19 += gabrielShield abilityStats
execute if score slot22 hp matches 1.. if score character# slot21 matches 22 run scoreboard players operation shield slot21 += gabrielShield abilityStats
execute if score slot23 hp matches 1.. if score character# slot21 matches 22 run scoreboard players operation shield slot21 += gabrielShield abilityStats
execute if score slot21 hp matches 1.. if score character# slot22 matches 22 run scoreboard players operation shield slot22 += gabrielShield abilityStats
execute if score slot23 hp matches 1.. if score character# slot22 matches 22 run scoreboard players operation shield slot22 += gabrielShield abilityStats
execute if score slot21 hp matches 1.. if score character# slot23 matches 22 run scoreboard players operation shield slot23 += gabrielShield abilityStats
execute if score slot22 hp matches 1.. if score character# slot23 matches 22 run scoreboard players operation shield slot23 += gabrielShield abilityStats

#Attack boolean reset
scoreboard players set slot17isatk booleans 0
scoreboard players set slot18isatk booleans 0
scoreboard players set slot19isatk booleans 0
scoreboard players set slot20isatk booleans 0
scoreboard players set slot21isatk booleans 0
scoreboard players set slot22isatk booleans 0
scoreboard players set slot23isatk booleans 0
scoreboard players set slot24isatk booleans 0



scoreboard players set attackIsOngoingGame3 booleans 0

execute if score game3Ongoing ongoinggames matches 1 run execute if score slot17 hp matches ..0 run execute unless score speed slot17 matches ..-900000 run function chthree:death1
execute if score game3Ongoing ongoinggames matches 1 run execute if score slot18 hp matches ..0 run execute unless score speed slot18 matches ..-900000 run function chthree:death2
execute if score game3Ongoing ongoinggames matches 1 run execute if score slot19 hp matches ..0 run execute unless score speed slot19 matches ..-900000 run function chthree:death3
execute if score game3Ongoing ongoinggames matches 1 unless score character# slot20 matches 0 run execute if score slot20 hp matches ..0 run execute unless score speed slot20 matches ..-900000 run function chthree:death4
execute if score game3Ongoing ongoinggames matches 1 run execute if score slot21 hp matches ..0 run execute unless score speed slot21 matches ..-900000 run function chthree:death5
execute if score game3Ongoing ongoinggames matches 1 run execute if score slot22 hp matches ..0 run execute unless score speed slot22 matches ..-900000 run function chthree:death6
execute if score game3Ongoing ongoinggames matches 1 run execute if score slot23 hp matches ..0 run execute unless score speed slot23 matches ..-900000 run function chthree:death7
execute if score game3Ongoing ongoinggames matches 1 unless score character# slot24 matches 0 run execute if score slot24 hp matches ..0 run execute unless score speed slot24 matches ..-900000 run function chthree:death8