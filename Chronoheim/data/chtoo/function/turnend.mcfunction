clear @a[tag=game2] minecraft:target
clear @p[tag=p3]
clear @p[tag=p4]
#Cooldowns
execute if score slot9isatk booleans matches 1 run execute if score cooldown slot9 matches 1.. run scoreboard players remove cooldown slot9 1
execute if score slot10isatk booleans matches 1 run execute if score cooldown slot10 matches 1.. run scoreboard players remove cooldown slot10 1
execute if score slot11isatk booleans matches 1 run execute if score cooldown slot11 matches 1.. run scoreboard players remove cooldown slot11 1
execute if score slot12isatk booleans matches 1 run execute if score cooldown slot12 matches 1.. run scoreboard players remove cooldown slot12 1
execute if score slot13isatk booleans matches 1 run execute if score cooldown slot13 matches 1.. run scoreboard players remove cooldown slot13 1
execute if score slot14isatk booleans matches 1 run execute if score cooldown slot14 matches 1.. run scoreboard players remove cooldown slot14 1
execute if score slot15isatk booleans matches 1 run execute if score cooldown slot15 matches 1.. run scoreboard players remove cooldown slot15 1
execute if score slot16isatk booleans matches 1 run execute if score cooldown slot16 matches 1.. run scoreboard players remove cooldown slot16 1

#Poison Damage
execute if score slot9isatk booleans matches 1 run scoreboard players operation slot9 hp -= slot9Poison poison
execute if score slot10isatk booleans matches 1 run scoreboard players operation slot10 hp -= slot10Poison poison
execute if score slot11isatk booleans matches 1 run scoreboard players operation slot11 hp -= slot11Poison poison
execute if score slot12isatk booleans matches 1 run scoreboard players operation slot12 hp -= slot12Poison poison
execute if score slot13isatk booleans matches 1 run scoreboard players operation slot13 hp -= slot13Poison poison
execute if score slot14isatk booleans matches 1 run scoreboard players operation slot14 hp -= slot14Poison poison
execute if score slot15isatk booleans matches 1 run scoreboard players operation slot15 hp -= slot15Poison poison
execute if score slot16isatk booleans matches 1 run scoreboard players operation slot16 hp -= slot16Poison poison

#Poison Duration
execute if score slot9isatk booleans matches 1 run execute if score durationSlot9 poison matches 1.. run scoreboard players remove durationSlot9 poison 1
execute if score slot10isatk booleans matches 1 run execute if score durationSlot10 poison matches 1.. run scoreboard players remove durationSlot10 poison 1
execute if score slot11isatk booleans matches 1 run execute if score durationSlot11 poison matches 1.. run scoreboard players remove durationSlot11 poison 1
execute if score slot12isatk booleans matches 1 run execute if score durationSlot12 poison matches 1.. run scoreboard players remove durationSlot12 poison 1
execute if score slot13isatk booleans matches 1 run execute if score durationSlot13 poison matches 1.. run scoreboard players remove durationSlot13 poison 1
execute if score slot14isatk booleans matches 1 run execute if score durationSlot14 poison matches 1.. run scoreboard players remove durationSlot14 poison 1
execute if score slot15isatk booleans matches 1 run execute if score durationSlot15 poison matches 1.. run scoreboard players remove durationSlot15 poison 1
execute if score slot16isatk booleans matches 1 run execute if score durationSlot16 poison matches 1.. run scoreboard players remove durationSlot16 poison 1

#Burn Damage
execute if score burn2 burn matches 1 if score slot9isatk booleans matches 1 run scoreboard players operation slot9 hp -= slot9Burn burn
execute if score burn2 burn matches 1 if score slot10isatk booleans matches 1 run scoreboard players operation slot10 hp -= slot10Burn burn
execute if score burn2 burn matches 1 if score slot11isatk booleans matches 1 run scoreboard players operation slot11 hp -= slot11Burn burn
execute if score burn2 burn matches 1 if score slot12isatk booleans matches 1 run scoreboard players operation slot12 hp -= slot12Burn burn
execute if score burn2 burn matches 1 if score slot13isatk booleans matches 1 run scoreboard players operation slot13 hp -= slot13Burn burn
execute if score burn2 burn matches 1 if score slot14isatk booleans matches 1 run scoreboard players operation slot14 hp -= slot14Burn burn
execute if score burn2 burn matches 1 if score slot15isatk booleans matches 1 run scoreboard players operation slot15 hp -= slot15Burn burn
execute if score burn2 burn matches 1 if score slot16isatk booleans matches 1 run scoreboard players operation slot16 hp -= slot16Burn burn

#Burn Duration
scoreboard players set burn2 burn 0
execute if score slot9isatk booleans matches 1 run execute if score durationSlot9 burn matches 1.. run scoreboard players remove durationSlot9 burn 1
execute if score slot10isatk booleans matches 1 run execute if score durationSlot10 burn matches 1.. run scoreboard players remove durationSlot10 burn 1
execute if score slot11isatk booleans matches 1 run execute if score durationSlot11 burn matches 1.. run scoreboard players remove durationSlot11 burn 1
execute if score slot12isatk booleans matches 1 run execute if score durationSlot12 burn matches 1.. run scoreboard players remove durationSlot12 burn 1
execute if score slot13isatk booleans matches 1 run execute if score durationSlot13 burn matches 1.. run scoreboard players remove durationSlot13 burn 1
execute if score slot14isatk booleans matches 1 run execute if score durationSlot14 burn matches 1.. run scoreboard players remove durationSlot14 burn 1
execute if score slot15isatk booleans matches 1 run execute if score durationSlot15 burn matches 1.. run scoreboard players remove durationSlot15 burn 1
execute if score slot16isatk booleans matches 1 run execute if score durationSlot16 burn matches 1.. run scoreboard players remove durationSlot16 burn 1

#Speed Debuff Duration
execute if score slot9isatk booleans matches 1 run execute if score durationSlot9 speedDebuffs matches 1.. run scoreboard players remove durationSlot9 speedDebuffs 1
execute if score slot10isatk booleans matches 1 run execute if score durationSlot10 speedDebuffs matches 1.. run scoreboard players remove durationSlot10 speedDebuffs 1
execute if score slot11isatk booleans matches 1 run execute if score durationSlot11 speedDebuffs matches 1.. run scoreboard players remove durationSlot11 speedDebuffs 1
execute if score slot12isatk booleans matches 1 run execute if score durationSlot12 speedDebuffs matches 1.. run scoreboard players remove durationSlot12 speedDebuffs 1
execute if score slot13isatk booleans matches 1 run execute if score durationSlot13 speedDebuffs matches 1.. run scoreboard players remove durationSlot13 speedDebuffs 1
execute if score slot14isatk booleans matches 1 run execute if score durationSlot14 speedDebuffs matches 1.. run scoreboard players remove durationSlot14 speedDebuffs 1
execute if score slot15isatk booleans matches 1 run execute if score durationSlot15 speedDebuffs matches 1.. run scoreboard players remove durationSlot15 speedDebuffs 1
execute if score slot16isatk booleans matches 1 run execute if score durationSlot16 speedDebuffs matches 1.. run scoreboard players remove durationSlot16 speedDebuffs 1

#Speed Buff Duration
execute if score slot9isatk booleans matches 1 run execute if score durationSlot9 speedBuffs matches 1.. run scoreboard players remove durationSlot9 speedBuffs 1
execute if score slot10isatk booleans matches 1 run execute if score durationSlot10 speedBuffs matches 1.. run scoreboard players remove durationSlot10 speedBuffs 1
execute if score slot11isatk booleans matches 1 run execute if score durationSlot11 speedBuffs matches 1.. run scoreboard players remove durationSlot11 speedBuffs 1
execute if score slot12isatk booleans matches 1 run execute if score durationSlot12 speedBuffs matches 1.. run scoreboard players remove durationSlot12 speedBuffs 1
execute if score slot13isatk booleans matches 1 run execute if score durationSlot13 speedBuffs matches 1.. run scoreboard players remove durationSlot13 speedBuffs 1
execute if score slot14isatk booleans matches 1 run execute if score durationSlot14 speedBuffs matches 1.. run scoreboard players remove durationSlot14 speedBuffs 1
execute if score slot15isatk booleans matches 1 run execute if score durationSlot15 speedBuffs matches 1.. run scoreboard players remove durationSlot15 speedBuffs 1
execute if score slot16isatk booleans matches 1 run execute if score durationSlot16 speedBuffs matches 1.. run scoreboard players remove durationSlot16 speedBuffs 1

#Attack Buff Duration
execute if score slot9isatk booleans matches 1 run execute if score buffDurationSlot9 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot9 atkmodifiers 1
execute if score slot10isatk booleans matches 1 run execute if score buffDurationSlot10 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot10 atkmodifiers 1
execute if score slot11isatk booleans matches 1 run execute if score buffDurationSlot11 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot11 atkmodifiers 1
execute if score slot12isatk booleans matches 1 run execute if score buffDurationSlot12 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot12 atkmodifiers 1
execute if score slot13isatk booleans matches 1 run execute if score buffDurationSlot13 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot13 atkmodifiers 1
execute if score slot14isatk booleans matches 1 run execute if score buffDurationSlot14 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot14 atkmodifiers 1
execute if score slot15isatk booleans matches 1 run execute if score buffDurationSlot15 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot15 atkmodifiers 1
execute if score slot16isatk booleans matches 1 run execute if score buffDurationSlot16 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot16 atkmodifiers 1

#Attack Debuff Duration
execute if score slot9isatk booleans matches 1 run execute if score debuffDurationSlot9 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot9 atkmodifiers 1
execute if score slot10isatk booleans matches 1 run execute if score debuffDurationSlot10 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot10 atkmodifiers 1
execute if score slot11isatk booleans matches 1 run execute if score debuffDurationSlot11 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot11 atkmodifiers 1
execute if score slot12isatk booleans matches 1 run execute if score debuffDurationSlot12 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot12 atkmodifiers 1
execute if score slot13isatk booleans matches 1 run execute if score debuffDurationSlot13 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot13 atkmodifiers 1
execute if score slot14isatk booleans matches 1 run execute if score debuffDurationSlot14 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot14 atkmodifiers 1
execute if score slot15isatk booleans matches 1 run execute if score debuffDurationSlot15 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot15 atkmodifiers 1
execute if score slot16isatk booleans matches 1 run execute if score debuffDurationSlot16 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot16 atkmodifiers 1

#Regen Healing
execute if score slot9isatk booleans matches 1 if score slot9bleeding booleaneffects matches 0 run scoreboard players operation slot9 hp += slot9Regen regen
execute if score slot10isatk booleans matches 1 if score slot10bleeding booleaneffects matches 0 run scoreboard players operation slot10 hp += slot10Regen regen
execute if score slot11isatk booleans matches 1 if score slot11bleeding booleaneffects matches 0 run scoreboard players operation slot11 hp += slot11Regen regen
execute if score slot12isatk booleans matches 1 if score slot12bleeding booleaneffects matches 0 run scoreboard players operation slot12 hp += slot12Regen regen
execute if score slot13isatk booleans matches 1 if score slot13bleeding booleaneffects matches 0 run scoreboard players operation slot13 hp += slot13Regen regen
execute if score slot14isatk booleans matches 1 if score slot14bleeding booleaneffects matches 0 run scoreboard players operation slot14 hp += slot14Regen regen
execute if score slot15isatk booleans matches 1 if score slot15bleeding booleaneffects matches 0 run scoreboard players operation slot15 hp += slot15Regen regen
execute if score slot16isatk booleans matches 1 if score slot16bleeding booleaneffects matches 0 run scoreboard players operation slot16 hp += slot16Regen regen

#Regen Duration
execute if score slot9isatk booleans matches 1 run execute if score durationSlot9 regen matches 1.. run scoreboard players remove durationSlot9 regen 1
execute if score slot10isatk booleans matches 1 run execute if score durationSlot10 regen matches 1.. run scoreboard players remove durationSlot10 regen 1
execute if score slot11isatk booleans matches 1 run execute if score durationSlot11 regen matches 1.. run scoreboard players remove durationSlot11 regen 1
execute if score slot12isatk booleans matches 1 run execute if score durationSlot12 regen matches 1.. run scoreboard players remove durationSlot12 regen 1
execute if score slot13isatk booleans matches 1 run execute if score durationSlot13 regen matches 1.. run scoreboard players remove durationSlot13 regen 1
execute if score slot14isatk booleans matches 1 run execute if score durationSlot14 regen matches 1.. run scoreboard players remove durationSlot14 regen 1
execute if score slot15isatk booleans matches 1 run execute if score durationSlot15 regen matches 1.. run scoreboard players remove durationSlot15 regen 1
execute if score slot16isatk booleans matches 1 run execute if score durationSlot16 regen matches 1.. run scoreboard players remove durationSlot16 regen 1

#Shield Duration
execute if score slot9isatk booleans matches 1 run execute if score durationSlot9 shield matches 1.. run scoreboard players remove durationSlot9 shield 1
execute if score slot10isatk booleans matches 1 run execute if score durationSlot10 shield matches 1.. run scoreboard players remove durationSlot10 shield 1
execute if score slot11isatk booleans matches 1 run execute if score durationSlot11 shield matches 1.. run scoreboard players remove durationSlot11 shield 1
execute if score slot12isatk booleans matches 1 run execute if score durationSlot12 shield matches 1.. run scoreboard players remove durationSlot12 shield 1
execute if score slot13isatk booleans matches 1 run execute if score durationSlot13 shield matches 1.. run scoreboard players remove durationSlot13 shield 1
execute if score slot14isatk booleans matches 1 run execute if score durationSlot14 shield matches 1.. run scoreboard players remove durationSlot14 shield 1
execute if score slot15isatk booleans matches 1 run execute if score durationSlot15 shield matches 1.. run scoreboard players remove durationSlot15 shield 1
execute if score slot16isatk booleans matches 1 run execute if score durationSlot16 shield matches 1.. run scoreboard players remove durationSlot16 shield 1

#Taunt Duration
execute if score slot9isatk booleans matches 1 run execute if score durationSlot9 taunt matches 1.. run scoreboard players remove durationSlot9 taunt 1
execute if score slot10isatk booleans matches 1 run execute if score durationSlot10 taunt matches 1.. run scoreboard players remove durationSlot10 taunt 1
execute if score slot11isatk booleans matches 1 run execute if score durationSlot11 taunt matches 1.. run scoreboard players remove durationSlot11 taunt 1
execute if score slot12isatk booleans matches 1 run execute if score durationSlot12 taunt matches 1.. run scoreboard players remove durationSlot12 taunt 1
execute if score slot13isatk booleans matches 1 run execute if score durationSlot13 taunt matches 1.. run scoreboard players remove durationSlot13 taunt 1
execute if score slot14isatk booleans matches 1 run execute if score durationSlot14 taunt matches 1.. run scoreboard players remove durationSlot14 taunt 1
execute if score slot15isatk booleans matches 1 run execute if score durationSlot15 taunt matches 1.. run scoreboard players remove durationSlot15 taunt 1
execute if score slot16isatk booleans matches 1 run execute if score durationSlot16 taunt matches 1.. run scoreboard players remove durationSlot16 taunt 1

#Fear Duration
execute if score slot9isatk booleans matches 1 run execute if score durationSlot13-9 fear matches 1.. run scoreboard players remove durationSlot13-9 fear 1
execute if score slot9isatk booleans matches 1 run execute if score durationSlot14-9 fear matches 1.. run scoreboard players remove durationSlot14-9 fear 1
execute if score slot9isatk booleans matches 1 run execute if score durationSlot15-9 fear matches 1.. run scoreboard players remove durationSlot15-9 fear 1
execute if score slot9isatk booleans matches 1 run execute if score durationSlot16-9 fear matches 1.. run scoreboard players remove durationSlot16-9 fear 1
execute if score slot10isatk booleans matches 1 run execute if score durationSlot13-10 fear matches 1.. run scoreboard players remove durationSlot13-10 fear 1
execute if score slot10isatk booleans matches 1 run execute if score durationSlot14-10 fear matches 1.. run scoreboard players remove durationSlot14-10 fear 1
execute if score slot10isatk booleans matches 1 run execute if score durationSlot15-10 fear matches 1.. run scoreboard players remove durationSlot15-10 fear 1
execute if score slot10isatk booleans matches 1 run execute if score durationSlot16-10 fear matches 1.. run scoreboard players remove durationSlot16-10 fear 1
execute if score slot11isatk booleans matches 1 run execute if score durationSlot13-11 fear matches 1.. run scoreboard players remove durationSlot13-11 fear 1
execute if score slot11isatk booleans matches 1 run execute if score durationSlot14-11 fear matches 1.. run scoreboard players remove durationSlot14-11 fear 1
execute if score slot11isatk booleans matches 1 run execute if score durationSlot15-11 fear matches 1.. run scoreboard players remove durationSlot15-11 fear 1
execute if score slot11isatk booleans matches 1 run execute if score durationSlot16-11 fear matches 1.. run scoreboard players remove durationSlot16-11 fear 1
execute if score slot12isatk booleans matches 1 run execute if score durationSlot13-12 fear matches 1.. run scoreboard players remove durationSlot13-12 fear 1
execute if score slot12isatk booleans matches 1 run execute if score durationSlot14-12 fear matches 1.. run scoreboard players remove durationSlot14-12 fear 1
execute if score slot12isatk booleans matches 1 run execute if score durationSlot15-12 fear matches 1.. run scoreboard players remove durationSlot15-12 fear 1
execute if score slot12isatk booleans matches 1 run execute if score durationSlot16-12 fear matches 1.. run scoreboard players remove durationSlot16-12 fear 1
execute if score slot13isatk booleans matches 1 run execute if score durationSlot9-13 fear matches 1.. run scoreboard players remove durationSlot9-13 fear 1
execute if score slot13isatk booleans matches 1 run execute if score durationSlot10-13 fear matches 1.. run scoreboard players remove durationSlot10-13 fear 1
execute if score slot13isatk booleans matches 1 run execute if score durationSlot11-13 fear matches 1.. run scoreboard players remove durationSlot11-13 fear 1
execute if score slot13isatk booleans matches 1 run execute if score durationSlot12-13 fear matches 1.. run scoreboard players remove durationSlot12-13 fear 1
execute if score slot14isatk booleans matches 1 run execute if score durationSlot9-14 fear matches 1.. run scoreboard players remove durationSlot9-14 fear 1
execute if score slot14isatk booleans matches 1 run execute if score durationSlot10-14 fear matches 1.. run scoreboard players remove durationSlot10-14 fear 1
execute if score slot14isatk booleans matches 1 run execute if score durationSlot11-14 fear matches 1.. run scoreboard players remove durationSlot11-14 fear 1
execute if score slot14isatk booleans matches 1 run execute if score durationSlot12-14 fear matches 1.. run scoreboard players remove durationSlot12-14 fear 1
execute if score slot15isatk booleans matches 1 run execute if score durationSlot9-15 fear matches 1.. run scoreboard players remove durationSlot9-15 fear 1
execute if score slot15isatk booleans matches 1 run execute if score durationSlot10-15 fear matches 1.. run scoreboard players remove durationSlot10-15 fear 1
execute if score slot15isatk booleans matches 1 run execute if score durationSlot11-15 fear matches 1.. run scoreboard players remove durationSlot11-15 fear 1
execute if score slot15isatk booleans matches 1 run execute if score durationSlot12-15 fear matches 1.. run scoreboard players remove durationSlot12-15 fear 1
execute if score slot16isatk booleans matches 1 run execute if score durationSlot9-16 fear matches 1.. run scoreboard players remove durationSlot9-16 fear 1
execute if score slot16isatk booleans matches 1 run execute if score durationSlot10-16 fear matches 1.. run scoreboard players remove durationSlot10-16 fear 1
execute if score slot16isatk booleans matches 1 run execute if score durationSlot11-16 fear matches 1.. run scoreboard players remove durationSlot11-16 fear 1
execute if score slot16isatk booleans matches 1 run execute if score durationSlot12-16 fear matches 1.. run scoreboard players remove durationSlot12-16 fear 1

#Disease Damage
execute if score slot9isatk booleans matches 1 run scoreboard players operation slot9 hp -= slot9Disease disease
execute if score slot10isatk booleans matches 1 run scoreboard players operation slot10 hp -= slot10Disease disease
execute if score slot11isatk booleans matches 1 run scoreboard players operation slot11 hp -= slot11Disease disease
execute if score slot12isatk booleans matches 1 run scoreboard players operation slot12 hp -= slot12Disease disease
execute if score slot13isatk booleans matches 1 run scoreboard players operation slot13 hp -= slot13Disease disease
execute if score slot14isatk booleans matches 1 run scoreboard players operation slot14 hp -= slot14Disease disease
execute if score slot15isatk booleans matches 1 run scoreboard players operation slot15 hp -= slot15Disease disease
execute if score slot16isatk booleans matches 1 run scoreboard players operation slot16 hp -= slot16Disease disease

#gatsby consume (visual)
execute if score slot9isatk booleans matches 1 run execute if score slot9EatenDuration abilities matches 1 at @e[name=slot9] run execute at @e[distance=..4,type=!minecraft:player] run tp @n[type=!minecraft:player,distance=..4] ~ ~20 ~
execute if score slot10isatk booleans matches 1 run execute if score slot10EatenDuration abilities matches 1 at @e[name=slot10] run execute at @e[distance=..4,type=!minecraft:player] run tp @n[type=!minecraft:player,distance=..4] ~ ~20 ~
execute if score slot11isatk booleans matches 1 run execute if score slot11EatenDuration abilities matches 1 at @e[name=slot11] run execute at @e[distance=..4,type=!minecraft:player] run tp @n[type=!minecraft:player,distance=..4] ~ ~20 ~
execute if score slot12isatk booleans matches 1 run execute if score slot12EatenDuration abilities matches 1 at @e[name=slot12] run execute at @e[distance=..4,type=!minecraft:player] run tp @n[type=!minecraft:player,distance=..4] ~ ~20 ~
execute if score slot13isatk booleans matches 1 run execute if score slot13EatenDuration abilities matches 1 at @e[name=slot13] run execute at @e[distance=..4,type=!minecraft:player] run tp @n[type=!minecraft:player,distance=..4] ~ ~20 ~
execute if score slot14isatk booleans matches 1 run execute if score slot14EatenDuration abilities matches 1 at @e[name=slot14] run execute at @e[distance=..4,type=!minecraft:player] run tp @n[type=!minecraft:player,distance=..4] ~ ~20 ~
execute if score slot15isatk booleans matches 1 run execute if score slot15EatenDuration abilities matches 1 at @e[name=slot15] run execute at @e[distance=..4,type=!minecraft:player] run tp @n[type=!minecraft:player,distance=..4] ~ ~20 ~
execute if score slot16isatk booleans matches 1 run execute if score slot16EatenDuration abilities matches 1 at @e[name=slot16] run execute at @e[distance=..4,type=!minecraft:player] run tp @n[type=!minecraft:player,distance=..4] ~ ~20 ~
execute if score slot9isatk booleans matches 1 run execute if score slot9EatenDuration abilities matches 1.. run scoreboard players remove slot9EatenDuration abilities 1
execute if score slot10isatk booleans matches 1 run execute if score slot10EatenDuration abilities matches 1.. run scoreboard players remove slot10EatenDuration abilities 1
execute if score slot11isatk booleans matches 1 run execute if score slot11EatenDuration abilities matches 1.. run scoreboard players remove slot11EatenDuration abilities 1
execute if score slot12isatk booleans matches 1 run execute if score slot12EatenDuration abilities matches 1.. run scoreboard players remove slot12EatenDuration abilities 1
execute if score slot13isatk booleans matches 1 run execute if score slot13EatenDuration abilities matches 1.. run scoreboard players remove slot13EatenDuration abilities 1
execute if score slot14isatk booleans matches 1 run execute if score slot14EatenDuration abilities matches 1.. run scoreboard players remove slot14EatenDuration abilities 1
execute if score slot15isatk booleans matches 1 run execute if score slot15EatenDuration abilities matches 1.. run scoreboard players remove slot15EatenDuration abilities 1
execute if score slot16isatk booleans matches 1 run execute if score slot16EatenDuration abilities matches 1.. run scoreboard players remove slot16EatenDuration abilities 1

#Mark Duration
#execute if score slot9isatk booleans matches 1 run execute if score durationSlot9 mark matches 1.. run scoreboard players remove durationSlot9 mark 1
#execute if score slot10isatk booleans matches 1 run execute if score durationSlot10 mark matches 1.. run scoreboard players remove durationSlot10 mark 1
#execute if score slot11isatk booleans matches 1 run execute if score durationSlot11 mark matches 1.. run scoreboard players remove durationSlot11 mark 1
#execute if score slot12isatk booleans matches 1 run execute if score durationSlot12 mark matches 1.. run scoreboard players remove durationSlot12 mark 1
#execute if score slot13isatk booleans matches 1 run execute if score durationSlot13 mark matches 1.. run scoreboard players remove durationSlot13 mark 1
#execute if score slot14isatk booleans matches 1 run execute if score durationSlot14 mark matches 1.. run scoreboard players remove durationSlot14 mark 1
#execute if score slot15isatk booleans matches 1 run execute if score durationSlot15 mark matches 1.. run scoreboard players remove durationSlot15 mark 1
#execute if score slot16isatk booleans matches 1 run execute if score durationSlot16 mark matches 1.. run scoreboard players remove durationSlot16 mark 1

#bleed duration
execute if score slot9isatk booleans matches 1 run execute if score slot9bleeding booleaneffects matches 1.. run scoreboard players remove slot9bleeding booleaneffects 1
execute if score slot10isatk booleans matches 1 run execute if score slot10bleeding booleaneffects matches 1.. run scoreboard players remove slot10bleeding booleaneffects 1
execute if score slot11isatk booleans matches 1 run execute if score slot11bleeding booleaneffects matches 1.. run scoreboard players remove slot11bleeding booleaneffects 1
execute if score slot12isatk booleans matches 1 run execute if score slot12bleeding booleaneffects matches 1.. run scoreboard players remove slot12bleeding booleaneffects 1
execute if score slot13isatk booleans matches 1 run execute if score slot13bleeding booleaneffects matches 1.. run scoreboard players remove slot13bleeding booleaneffects 1
execute if score slot14isatk booleans matches 1 run execute if score slot14bleeding booleaneffects matches 1.. run scoreboard players remove slot14bleeding booleaneffects 1
execute if score slot15isatk booleans matches 1 run execute if score slot15bleeding booleaneffects matches 1.. run scoreboard players remove slot15bleeding booleaneffects 1
execute if score slot16isatk booleans matches 1 run execute if score slot16bleeding booleaneffects matches 1.. run scoreboard players remove slot16bleeding booleaneffects 1

#disarm duration
execute if score slot9isatk booleans matches 1 run execute if score disarmedslot9 booleaneffects matches 1.. run scoreboard players remove disarmedslot9 booleaneffects 1
execute if score slot10isatk booleans matches 1 run execute if score disarmedslot10 booleaneffects matches 1.. run scoreboard players remove disarmedslot10 booleaneffects 1
execute if score slot11isatk booleans matches 1 run execute if score disarmedslot11 booleaneffects matches 1.. run scoreboard players remove disarmedslot11 booleaneffects 1
execute if score slot12isatk booleans matches 1 run execute if score disarmedslot12 booleaneffects matches 1.. run scoreboard players remove disarmedslot12 booleaneffects 1
execute if score slot13isatk booleans matches 1 run execute if score disarmedslot13 booleaneffects matches 1.. run scoreboard players remove disarmedslot13 booleaneffects 1
execute if score slot14isatk booleans matches 1 run execute if score disarmedslot14 booleaneffects matches 1.. run scoreboard players remove disarmedslot14 booleaneffects 1
execute if score slot15isatk booleans matches 1 run execute if score disarmedslot15 booleaneffects matches 1.. run scoreboard players remove disarmedslot15 booleaneffects 1
execute if score slot16isatk booleans matches 1 run execute if score disarmedslot16 booleaneffects matches 1.. run scoreboard players remove disarmedslot16 booleaneffects 1

#invincibility duration
execute if score slot9isatk booleans matches 1 run execute if score invincibleSlot9 booleaneffects matches 1.. run scoreboard players remove invincibleSlot9 booleaneffects 1
execute if score slot10isatk booleans matches 1 run execute if score invincibleSlot10 booleaneffects matches 1.. run scoreboard players remove invincibleSlot10 booleaneffects 1
execute if score slot11isatk booleans matches 1 run execute if score invincibleSlot11 booleaneffects matches 1.. run scoreboard players remove invincibleSlot11 booleaneffects 1
execute if score slot12isatk booleans matches 1 run execute if score invincibleSlot12 booleaneffects matches 1.. run scoreboard players remove invincibleSlot12 booleaneffects 1
execute if score slot13isatk booleans matches 1 run execute if score invincibleSlot13 booleaneffects matches 1.. run scoreboard players remove invincibleSlot13 booleaneffects 1
execute if score slot14isatk booleans matches 1 run execute if score invincibleSlot14 booleaneffects matches 1.. run scoreboard players remove invincibleSlot14 booleaneffects 1
execute if score slot15isatk booleans matches 1 run execute if score invincibleSlot15 booleaneffects matches 1.. run scoreboard players remove invincibleSlot15 booleaneffects 1
execute if score slot16isatk booleans matches 1 run execute if score invincibleSlot16 booleaneffects matches 1.. run scoreboard players remove invincibleSlot16 booleaneffects 1

#Ward Duration
execute if score slot9isatk booleans matches 1 run execute if score durationSlot9 wards matches 1.. run scoreboard players remove durationSlot9 wards 1
execute if score slot10isatk booleans matches 1 run execute if score durationSlot10 wards matches 1.. run scoreboard players remove durationSlot10 wards 1
execute if score slot11isatk booleans matches 1 run execute if score durationSlot11 wards matches 1.. run scoreboard players remove durationSlot11 wards 1
execute if score slot12isatk booleans matches 1 run execute if score durationSlot12 wards matches 1.. run scoreboard players remove durationSlot12 wards 1
execute if score slot13isatk booleans matches 1 run execute if score durationSlot13 wards matches 1.. run scoreboard players remove durationSlot13 wards 1
execute if score slot14isatk booleans matches 1 run execute if score durationSlot14 wards matches 1.. run scoreboard players remove durationSlot14 wards 1
execute if score slot15isatk booleans matches 1 run execute if score durationSlot15 wards matches 1.. run scoreboard players remove durationSlot15 wards 1
execute if score slot16isatk booleans matches 1 run execute if score durationSlot16 wards matches 1.. run scoreboard players remove durationSlot16 wards 1

execute if score slot9isatk booleans matches 1 if score side3spinball abilities matches 0.. if score character# slot9 matches 10 run scoreboard players add side3spinball abilities 1
execute if score slot10isatk booleans matches 1 if score side3spinball abilities matches 0.. if score character# slot10 matches 10 run scoreboard players add side3spinball abilities 1
execute if score slot11isatk booleans matches 1 if score side3spinball abilities matches 0.. if score character# slot11 matches 10 run scoreboard players add side3spinball abilities 1
execute if score slot13isatk booleans matches 1 if score side4spinball abilities matches 0.. if score character# slot13 matches 10 run scoreboard players add side4spinball abilities 1
execute if score slot14isatk booleans matches 1 if score side4spinball abilities matches 0.. if score character# slot14 matches 10 run scoreboard players add side4spinball abilities 1
execute if score slot15isatk booleans matches 1 if score side4spinball abilities matches 0.. if score character# slot15 matches 10 run scoreboard players add side4spinball abilities 1

execute if score slot9isatk booleans matches 1 if score side3spinball abilities matches 10.. if score character# slot9 matches 10 run execute at @n[name=slot9,type=armor_stand] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.4 40
execute if score slot10isatk booleans matches 1 if score side3spinball abilities matches 10.. if score character# slot10 matches 10 run execute at @n[name=slot10,type=armor_stand] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.4 40
execute if score slot11isatk booleans matches 1 if score side3spinball abilities matches 10.. if score character# slot11 matches 10 run execute at @n[name=slot11,type=armor_stand] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.4 40
execute if score slot13isatk booleans matches 1 if score side4spinball abilities matches 10.. if score character# slot13 matches 10 run execute at @n[name=slot13,type=armor_stand] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.4 40
execute if score slot14isatk booleans matches 1 if score side4spinball abilities matches 10.. if score character# slot14 matches 10 run execute at @n[name=slot14,type=armor_stand] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.4 40
execute if score slot15isatk booleans matches 1 if score side4spinball abilities matches 10.. if score character# slot15 matches 10 run execute at @n[name=slot15,type=armor_stand] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.4 40

execute if score slot9isatk booleans matches 1 if score side3spinball abilities matches 0..9 if score character# slot9 matches 10 run execute at @n[name=slot9,type=armor_stand] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.2 20
execute if score slot10isatk booleans matches 1 if score side3spinball abilities matches 0..9 if score character# slot10 matches 10 run execute at @n[name=slot10,type=armor_stand] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.2 20
execute if score slot11isatk booleans matches 1 if score side3spinball abilities matches 0..9 if score character# slot11 matches 10 run execute at @n[name=slot11,type=armor_stand] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.2 20
execute if score slot13isatk booleans matches 1 if score side4spinball abilities matches 0..9 if score character# slot13 matches 10 run execute at @n[name=slot13,type=armor_stand] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.2 20
execute if score slot14isatk booleans matches 1 if score side4spinball abilities matches 0..9 if score character# slot14 matches 10 run execute at @n[name=slot14,type=armor_stand] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.2 20
execute if score slot15isatk booleans matches 1 if score side4spinball abilities matches 0..9 if score character# slot15 matches 10 run execute at @n[name=slot15,type=armor_stand] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.2 20

execute if score slot10 hp matches 1.. if score character# slot9 matches 22 if score durationSlot9 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot9 shield += gabrielShieldDuration abilityStats
execute if score slot11 hp matches 1.. if score character# slot9 matches 22 if score durationSlot9 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot9 shield += gabrielShieldDuration abilityStats
execute if score slot9 hp matches 1.. if score character# slot10 matches 22 if score durationSlot10 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot10 shield += gabrielShieldDuration abilityStats
execute if score slot11 hp matches 1.. if score character# slot10 matches 22 if score durationSlot10 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot10 shield += gabrielShieldDuration abilityStats
execute if score slot9 hp matches 1.. if score character# slot11 matches 22 if score durationSlot11 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot11 shield += gabrielShieldDuration abilityStats
execute if score slot10 hp matches 1.. if score character# slot11 matches 22 if score durationSlot11 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot11 shield += gabrielShieldDuration abilityStats
execute if score slot14 hp matches 1.. if score character# slot13 matches 22 if score durationSlot13 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot13 shield += gabrielShieldDuration abilityStats
execute if score slot15 hp matches 1.. if score character# slot13 matches 22 if score durationSlot13 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot13 shield += gabrielShieldDuration abilityStats
execute if score slot13 hp matches 1.. if score character# slot14 matches 22 if score durationSlot14 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot14 shield += gabrielShieldDuration abilityStats
execute if score slot15 hp matches 1.. if score character# slot14 matches 22 if score durationSlot14 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot14 shield += gabrielShieldDuration abilityStats
execute if score slot13 hp matches 1.. if score character# slot15 matches 22 if score durationSlot15 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot15 shield += gabrielShieldDuration abilityStats
execute if score slot14 hp matches 1.. if score character# slot15 matches 22 if score durationSlot15 shield < gabrielShieldDuration abilityStats run scoreboard players operation durationSlot15 shield += gabrielShieldDuration abilityStats
execute if score slot10 hp matches 1.. if score character# slot9 matches 22 run scoreboard players operation shield slot9 += gabrielShield abilityStats
execute if score slot11 hp matches 1.. if score character# slot9 matches 22 run scoreboard players operation shield slot9 += gabrielShield abilityStats
execute if score slot9 hp matches 1.. if score character# slot10 matches 22 run scoreboard players operation shield slot10 += gabrielShield abilityStats
execute if score slot11 hp matches 1.. if score character# slot10 matches 22 run scoreboard players operation shield slot10 += gabrielShield abilityStats
execute if score slot9 hp matches 1.. if score character# slot11 matches 22 run scoreboard players operation shield slot11 += gabrielShield abilityStats
execute if score slot10 hp matches 1.. if score character# slot11 matches 22 run scoreboard players operation shield slot11 += gabrielShield abilityStats
execute if score slot14 hp matches 1.. if score character# slot13 matches 22 run scoreboard players operation shield slot13 += gabrielShield abilityStats
execute if score slot15 hp matches 1.. if score character# slot13 matches 22 run scoreboard players operation shield slot13 += gabrielShield abilityStats
execute if score slot13 hp matches 1.. if score character# slot14 matches 22 run scoreboard players operation shield slot14 += gabrielShield abilityStats
execute if score slot15 hp matches 1.. if score character# slot14 matches 22 run scoreboard players operation shield slot14 += gabrielShield abilityStats
execute if score slot13 hp matches 1.. if score character# slot15 matches 22 run scoreboard players operation shield slot15 += gabrielShield abilityStats
execute if score slot14 hp matches 1.. if score character# slot15 matches 22 run scoreboard players operation shield slot15 += gabrielShield abilityStats

#Attack boolean reset
scoreboard players set slot9isatk booleans 0
scoreboard players set slot10isatk booleans 0
scoreboard players set slot11isatk booleans 0
scoreboard players set slot12isatk booleans 0
scoreboard players set slot13isatk booleans 0
scoreboard players set slot14isatk booleans 0
scoreboard players set slot15isatk booleans 0
scoreboard players set slot16isatk booleans 0



scoreboard players set attackIsOngoingGame2 booleans 0

execute if score game2Ongoing ongoinggames matches 1 run execute if score slot9 hp matches ..0 run execute unless score speed slot9 matches ..-900000 run function chtoo:death1
execute if score game2Ongoing ongoinggames matches 1 run execute if score slot10 hp matches ..0 run execute unless score speed slot10 matches ..-900000 run function chtoo:death2
execute if score game2Ongoing ongoinggames matches 1 run execute if score slot11 hp matches ..0 run execute unless score speed slot11 matches ..-900000 run function chtoo:death3
execute if score game2Ongoing ongoinggames matches 1 unless score character# slot12 matches 0 run execute if score slot12 hp matches ..0 run execute unless score speed slot12 matches ..-900000 run function chtoo:death4
execute if score game2Ongoing ongoinggames matches 1 run execute if score slot13 hp matches ..0 run execute unless score speed slot13 matches ..-900000 run function chtoo:death5
execute if score game2Ongoing ongoinggames matches 1 run execute if score slot14 hp matches ..0 run execute unless score speed slot14 matches ..-900000 run function chtoo:death6
execute if score game2Ongoing ongoinggames matches 1 run execute if score slot15 hp matches ..0 run execute unless score speed slot15 matches ..-900000 run function chtoo:death7
execute if score game2Ongoing ongoinggames matches 1 unless score character# slot16 matches 0 run execute if score slot16 hp matches ..0 run execute unless score speed slot16 matches ..-900000 run function chtoo:death8