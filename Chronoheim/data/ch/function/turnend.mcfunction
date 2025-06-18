clear @a[tag=game1] minecraft:target
#Cooldowns
execute if score slot1isatk booleans matches 1 run execute if score cooldown slot1 matches 1.. run scoreboard players remove cooldown slot1 1
execute if score slot2isatk booleans matches 1 run execute if score cooldown slot2 matches 1.. run scoreboard players remove cooldown slot2 1
execute if score slot3isatk booleans matches 1 run execute if score cooldown slot3 matches 1.. run scoreboard players remove cooldown slot3 1
execute if score slot4isatk booleans matches 1 run execute if score cooldown slot4 matches 1.. run scoreboard players remove cooldown slot4 1
execute if score slot5isatk booleans matches 1 run execute if score cooldown slot5 matches 1.. run scoreboard players remove cooldown slot5 1
execute if score slot6isatk booleans matches 1 run execute if score cooldown slot6 matches 1.. run scoreboard players remove cooldown slot6 1
execute if score slot7isatk booleans matches 1 run execute if score cooldown slot7 matches 1.. run scoreboard players remove cooldown slot7 1
execute if score slot8isatk booleans matches 1 run execute if score cooldown slot8 matches 1.. run scoreboard players remove cooldown slot8 1

#Poison Damage
execute if score slot1isatk booleans matches 1 run scoreboard players operation slot1 hp -= slot1Poison poison
execute if score slot2isatk booleans matches 1 run scoreboard players operation slot2 hp -= slot2Poison poison
execute if score slot3isatk booleans matches 1 run scoreboard players operation slot3 hp -= slot3Poison poison
execute if score slot4isatk booleans matches 1 run scoreboard players operation slot4 hp -= slot4Poison poison
execute if score slot5isatk booleans matches 1 run scoreboard players operation slot5 hp -= slot5Poison poison
execute if score slot6isatk booleans matches 1 run scoreboard players operation slot6 hp -= slot6Poison poison
execute if score slot7isatk booleans matches 1 run scoreboard players operation slot7 hp -= slot7Poison poison
execute if score slot8isatk booleans matches 1 run scoreboard players operation slot8 hp -= slot8Poison poison

#Poison Duration
execute if score slot1isatk booleans matches 1 run execute if score durationSlot1 poison matches 1.. run scoreboard players remove durationSlot1 poison 1
execute if score slot2isatk booleans matches 1 run execute if score durationSlot2 poison matches 1.. run scoreboard players remove durationSlot2 poison 1
execute if score slot3isatk booleans matches 1 run execute if score durationSlot3 poison matches 1.. run scoreboard players remove durationSlot3 poison 1
execute if score slot4isatk booleans matches 1 run execute if score durationSlot4 poison matches 1.. run scoreboard players remove durationSlot4 poison 1
execute if score slot5isatk booleans matches 1 run execute if score durationSlot5 poison matches 1.. run scoreboard players remove durationSlot5 poison 1
execute if score slot6isatk booleans matches 1 run execute if score durationSlot6 poison matches 1.. run scoreboard players remove durationSlot6 poison 1
execute if score slot7isatk booleans matches 1 run execute if score durationSlot7 poison matches 1.. run scoreboard players remove durationSlot7 poison 1
execute if score slot8isatk booleans matches 1 run execute if score durationSlot8 poison matches 1.. run scoreboard players remove durationSlot8 poison 1

#Burn Damage
execute if score burn burn matches 1 run execute if score slot1isatk booleans matches 1 run scoreboard players operation slot1 hp -= slot1Burn burn
execute if score burn burn matches 1 run execute if score slot2isatk booleans matches 1 run scoreboard players operation slot2 hp -= slot2Burn burn
execute if score burn burn matches 1 run execute if score slot3isatk booleans matches 1 run scoreboard players operation slot3 hp -= slot3Burn burn
execute if score burn burn matches 1 run execute if score slot4isatk booleans matches 1 run scoreboard players operation slot4 hp -= slot4Burn burn
execute if score burn burn matches 1 run execute if score slot5isatk booleans matches 1 run scoreboard players operation slot5 hp -= slot5Burn burn
execute if score burn burn matches 1 run execute if score slot6isatk booleans matches 1 run scoreboard players operation slot6 hp -= slot6Burn burn
execute if score burn burn matches 1 run execute if score slot7isatk booleans matches 1 run scoreboard players operation slot7 hp -= slot7Burn burn
execute if score burn burn matches 1 run execute if score slot8isatk booleans matches 1 run scoreboard players operation slot8 hp -= slot8Burn burn

#Burn Duration
scoreboard players set burn burn 0
execute if score slot1isatk booleans matches 1 run execute if score durationSlot1 burn matches 1.. run scoreboard players remove durationSlot1 burn 1
execute if score slot2isatk booleans matches 1 run execute if score durationSlot2 burn matches 1.. run scoreboard players remove durationSlot2 burn 1
execute if score slot3isatk booleans matches 1 run execute if score durationSlot3 burn matches 1.. run scoreboard players remove durationSlot3 burn 1
execute if score slot4isatk booleans matches 1 run execute if score durationSlot4 burn matches 1.. run scoreboard players remove durationSlot4 burn 1
execute if score slot5isatk booleans matches 1 run execute if score durationSlot5 burn matches 1.. run scoreboard players remove durationSlot5 burn 1
execute if score slot6isatk booleans matches 1 run execute if score durationSlot6 burn matches 1.. run scoreboard players remove durationSlot6 burn 1
execute if score slot7isatk booleans matches 1 run execute if score durationSlot7 burn matches 1.. run scoreboard players remove durationSlot7 burn 1
execute if score slot8isatk booleans matches 1 run execute if score durationSlot8 burn matches 1.. run scoreboard players remove durationSlot8 burn 1

#Speed Debuff Duration
execute if score slot1isatk booleans matches 1 run execute if score durationSlot1 speedDebuffs matches 1.. run scoreboard players remove durationSlot1 speedDebuffs 1
execute if score slot2isatk booleans matches 1 run execute if score durationSlot2 speedDebuffs matches 1.. run scoreboard players remove durationSlot2 speedDebuffs 1
execute if score slot3isatk booleans matches 1 run execute if score durationSlot3 speedDebuffs matches 1.. run scoreboard players remove durationSlot3 speedDebuffs 1
execute if score slot4isatk booleans matches 1 run execute if score durationSlot4 speedDebuffs matches 1.. run scoreboard players remove durationSlot4 speedDebuffs 1
execute if score slot5isatk booleans matches 1 run execute if score durationSlot5 speedDebuffs matches 1.. run scoreboard players remove durationSlot5 speedDebuffs 1
execute if score slot6isatk booleans matches 1 run execute if score durationSlot6 speedDebuffs matches 1.. run scoreboard players remove durationSlot6 speedDebuffs 1
execute if score slot7isatk booleans matches 1 run execute if score durationSlot7 speedDebuffs matches 1.. run scoreboard players remove durationSlot7 speedDebuffs 1
execute if score slot8isatk booleans matches 1 run execute if score durationSlot8 speedDebuffs matches 1.. run scoreboard players remove durationSlot8 speedDebuffs 1

#Speed Buff Duration
execute if score slot1isatk booleans matches 1 run execute if score durationSlot1 speedBuffs matches 1.. run scoreboard players remove durationSlot1 speedBuffs 1
execute if score slot2isatk booleans matches 1 run execute if score durationSlot2 speedBuffs matches 1.. run scoreboard players remove durationSlot2 speedBuffs 1
execute if score slot3isatk booleans matches 1 run execute if score durationSlot3 speedBuffs matches 1.. run scoreboard players remove durationSlot3 speedBuffs 1
execute if score slot4isatk booleans matches 1 run execute if score durationSlot4 speedBuffs matches 1.. run scoreboard players remove durationSlot4 speedBuffs 1
execute if score slot5isatk booleans matches 1 run execute if score durationSlot5 speedBuffs matches 1.. run scoreboard players remove durationSlot5 speedBuffs 1
execute if score slot6isatk booleans matches 1 run execute if score durationSlot6 speedBuffs matches 1.. run scoreboard players remove durationSlot6 speedBuffs 1
execute if score slot7isatk booleans matches 1 run execute if score durationSlot7 speedBuffs matches 1.. run scoreboard players remove durationSlot7 speedBuffs 1
execute if score slot8isatk booleans matches 1 run execute if score durationSlot8 speedBuffs matches 1.. run scoreboard players remove durationSlot8 speedBuffs 1

#Attack Buff Duration
execute if score slot1isatk booleans matches 1 run execute if score buffDurationSlot1 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot1 atkmodifiers 1
execute if score slot2isatk booleans matches 1 run execute if score buffDurationSlot2 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot2 atkmodifiers 1
execute if score slot3isatk booleans matches 1 run execute if score buffDurationSlot3 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot3 atkmodifiers 1
execute if score slot4isatk booleans matches 1 run execute if score buffDurationSlot4 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot4 atkmodifiers 1
execute if score slot5isatk booleans matches 1 run execute if score buffDurationSlot5 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot5 atkmodifiers 1
execute if score slot6isatk booleans matches 1 run execute if score buffDurationSlot6 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot6 atkmodifiers 1
execute if score slot7isatk booleans matches 1 run execute if score buffDurationSlot7 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot7 atkmodifiers 1
execute if score slot8isatk booleans matches 1 run execute if score buffDurationSlot8 atkmodifiers matches 1.. run scoreboard players remove buffDurationSlot8 atkmodifiers 1

#Attack Debuff Duration
execute if score slot1isatk booleans matches 1 run execute if score debuffDurationSlot1 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot1 atkmodifiers 1
execute if score slot2isatk booleans matches 1 run execute if score debuffDurationSlot2 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot2 atkmodifiers 1
execute if score slot3isatk booleans matches 1 run execute if score debuffDurationSlot3 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot3 atkmodifiers 1
execute if score slot4isatk booleans matches 1 run execute if score debuffDurationSlot4 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot4 atkmodifiers 1
execute if score slot5isatk booleans matches 1 run execute if score debuffDurationSlot5 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot5 atkmodifiers 1
execute if score slot6isatk booleans matches 1 run execute if score debuffDurationSlot6 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot6 atkmodifiers 1
execute if score slot7isatk booleans matches 1 run execute if score debuffDurationSlot7 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot7 atkmodifiers 1
execute if score slot8isatk booleans matches 1 run execute if score debuffDurationSlot8 atkmodifiers matches 1.. run scoreboard players remove debuffDurationSlot8 atkmodifiers 1

#Regen Healing
execute if score slot1isatk booleans matches 1 run scoreboard players operation slot1 hp += slot1Regen regen
execute if score slot2isatk booleans matches 1 run scoreboard players operation slot2 hp += slot2Regen regen
execute if score slot3isatk booleans matches 1 run scoreboard players operation slot3 hp += slot3Regen regen
execute if score slot4isatk booleans matches 1 run scoreboard players operation slot4 hp += slot4Regen regen
execute if score slot5isatk booleans matches 1 run scoreboard players operation slot5 hp += slot5Regen regen
execute if score slot6isatk booleans matches 1 run scoreboard players operation slot6 hp += slot6Regen regen
execute if score slot7isatk booleans matches 1 run scoreboard players operation slot7 hp += slot7Regen regen
execute if score slot8isatk booleans matches 1 run scoreboard players operation slot8 hp += slot8Regen regen

#Regen Duration
execute if score slot1isatk booleans matches 1 run execute if score durationSlot1 regen matches 1.. run scoreboard players remove durationSlot1 regen 1
execute if score slot2isatk booleans matches 1 run execute if score durationSlot2 regen matches 1.. run scoreboard players remove durationSlot2 regen 1
execute if score slot3isatk booleans matches 1 run execute if score durationSlot3 regen matches 1.. run scoreboard players remove durationSlot3 regen 1
execute if score slot4isatk booleans matches 1 run execute if score durationSlot4 regen matches 1.. run scoreboard players remove durationSlot4 regen 1
execute if score slot5isatk booleans matches 1 run execute if score durationSlot5 regen matches 1.. run scoreboard players remove durationSlot5 regen 1
execute if score slot6isatk booleans matches 1 run execute if score durationSlot6 regen matches 1.. run scoreboard players remove durationSlot6 regen 1
execute if score slot7isatk booleans matches 1 run execute if score durationSlot7 regen matches 1.. run scoreboard players remove durationSlot7 regen 1
execute if score slot8isatk booleans matches 1 run execute if score durationSlot8 regen matches 1.. run scoreboard players remove durationSlot8 regen 1

#Shield Duration
execute if score slot1isatk booleans matches 1 run execute if score durationSlot1 shield matches 1.. run scoreboard players remove durationSlot1 shield 1
execute if score slot2isatk booleans matches 1 run execute if score durationSlot2 shield matches 1.. run scoreboard players remove durationSlot2 shield 1
execute if score slot3isatk booleans matches 1 run execute if score durationSlot3 shield matches 1.. run scoreboard players remove durationSlot3 shield 1
execute if score slot4isatk booleans matches 1 run execute if score durationSlot4 shield matches 1.. run scoreboard players remove durationSlot4 shield 1
execute if score slot5isatk booleans matches 1 run execute if score durationSlot5 shield matches 1.. run scoreboard players remove durationSlot5 shield 1
execute if score slot6isatk booleans matches 1 run execute if score durationSlot6 shield matches 1.. run scoreboard players remove durationSlot6 shield 1
execute if score slot7isatk booleans matches 1 run execute if score durationSlot7 shield matches 1.. run scoreboard players remove durationSlot7 shield 1
execute if score slot8isatk booleans matches 1 run execute if score durationSlot8 shield matches 1.. run scoreboard players remove durationSlot8 shield 1

#Taunt Duration
execute if score slot1isatk booleans matches 1 run execute if score durationSlot1 taunt matches 1.. run scoreboard players remove durationSlot1 taunt 1
execute if score slot2isatk booleans matches 1 run execute if score durationSlot2 taunt matches 1.. run scoreboard players remove durationSlot2 taunt 1
execute if score slot3isatk booleans matches 1 run execute if score durationSlot3 taunt matches 1.. run scoreboard players remove durationSlot3 taunt 1
execute if score slot4isatk booleans matches 1 run execute if score durationSlot4 taunt matches 1.. run scoreboard players remove durationSlot4 taunt 1
execute if score slot5isatk booleans matches 1 run execute if score durationSlot5 taunt matches 1.. run scoreboard players remove durationSlot5 taunt 1
execute if score slot6isatk booleans matches 1 run execute if score durationSlot6 taunt matches 1.. run scoreboard players remove durationSlot6 taunt 1
execute if score slot7isatk booleans matches 1 run execute if score durationSlot7 taunt matches 1.. run scoreboard players remove durationSlot7 taunt 1
execute if score slot8isatk booleans matches 1 run execute if score durationSlot8 taunt matches 1.. run scoreboard players remove durationSlot8 taunt 1

#Fear Duration
execute if score slot1isatk booleans matches 1 run execute if score durationSlot5-1 fear matches 1.. run scoreboard players remove durationSlot5-1 fear 1
execute if score slot1isatk booleans matches 1 run execute if score durationSlot6-1 fear matches 1.. run scoreboard players remove durationSlot6-1 fear 1
execute if score slot1isatk booleans matches 1 run execute if score durationSlot7-1 fear matches 1.. run scoreboard players remove durationSlot7-1 fear 1
execute if score slot1isatk booleans matches 1 run execute if score durationSlot8-1 fear matches 1.. run scoreboard players remove durationSlot8-1 fear 1
execute if score slot2isatk booleans matches 1 run execute if score durationSlot5-2 fear matches 1.. run scoreboard players remove durationSlot5-2 fear 1
execute if score slot2isatk booleans matches 1 run execute if score durationSlot6-2 fear matches 1.. run scoreboard players remove durationSlot6-2 fear 1
execute if score slot2isatk booleans matches 1 run execute if score durationSlot7-2 fear matches 1.. run scoreboard players remove durationSlot7-2 fear 1
execute if score slot2isatk booleans matches 1 run execute if score durationSlot8-2 fear matches 1.. run scoreboard players remove durationSlot8-2 fear 1
execute if score slot3isatk booleans matches 1 run execute if score durationSlot5-3 fear matches 1.. run scoreboard players remove durationSlot5-3 fear 1
execute if score slot3isatk booleans matches 1 run execute if score durationSlot6-3 fear matches 1.. run scoreboard players remove durationSlot6-3 fear 1
execute if score slot3isatk booleans matches 1 run execute if score durationSlot7-3 fear matches 1.. run scoreboard players remove durationSlot7-3 fear 1
execute if score slot3isatk booleans matches 1 run execute if score durationSlot8-3 fear matches 1.. run scoreboard players remove durationSlot8-3 fear 1
execute if score slot4isatk booleans matches 1 run execute if score durationSlot5-4 fear matches 1.. run scoreboard players remove durationSlot5-4 fear 1
execute if score slot4isatk booleans matches 1 run execute if score durationSlot6-4 fear matches 1.. run scoreboard players remove durationSlot6-4 fear 1
execute if score slot4isatk booleans matches 1 run execute if score durationSlot7-4 fear matches 1.. run scoreboard players remove durationSlot7-4 fear 1
execute if score slot4isatk booleans matches 1 run execute if score durationSlot8-4 fear matches 1.. run scoreboard players remove durationSlot8-4 fear 1
execute if score slot5isatk booleans matches 1 run execute if score durationSlot1-5 fear matches 1.. run scoreboard players remove durationSlot1-5 fear 1
execute if score slot5isatk booleans matches 1 run execute if score durationSlot2-5 fear matches 1.. run scoreboard players remove durationSlot2-5 fear 1
execute if score slot5isatk booleans matches 1 run execute if score durationSlot3-5 fear matches 1.. run scoreboard players remove durationSlot3-5 fear 1
execute if score slot5isatk booleans matches 1 run execute if score durationSlot4-5 fear matches 1.. run scoreboard players remove durationSlot4-5 fear 1
execute if score slot6isatk booleans matches 1 run execute if score durationSlot1-6 fear matches 1.. run scoreboard players remove durationSlot1-6 fear 1
execute if score slot6isatk booleans matches 1 run execute if score durationSlot2-6 fear matches 1.. run scoreboard players remove durationSlot2-6 fear 1
execute if score slot6isatk booleans matches 1 run execute if score durationSlot3-6 fear matches 1.. run scoreboard players remove durationSlot3-6 fear 1
execute if score slot6isatk booleans matches 1 run execute if score durationSlot4-6 fear matches 1.. run scoreboard players remove durationSlot4-6 fear 1
execute if score slot7isatk booleans matches 1 run execute if score durationSlot1-7 fear matches 1.. run scoreboard players remove durationSlot1-7 fear 1
execute if score slot7isatk booleans matches 1 run execute if score durationSlot2-7 fear matches 1.. run scoreboard players remove durationSlot2-7 fear 1
execute if score slot7isatk booleans matches 1 run execute if score durationSlot3-7 fear matches 1.. run scoreboard players remove durationSlot3-7 fear 1
execute if score slot7isatk booleans matches 1 run execute if score durationSlot4-7 fear matches 1.. run scoreboard players remove durationSlot4-7 fear 1
execute if score slot8isatk booleans matches 1 run execute if score durationSlot1-8 fear matches 1.. run scoreboard players remove durationSlot1-8 fear 1
execute if score slot8isatk booleans matches 1 run execute if score durationSlot2-8 fear matches 1.. run scoreboard players remove durationSlot2-8 fear 1
execute if score slot8isatk booleans matches 1 run execute if score durationSlot3-8 fear matches 1.. run scoreboard players remove durationSlot3-8 fear 1
execute if score slot8isatk booleans matches 1 run execute if score durationSlot4-8 fear matches 1.. run scoreboard players remove durationSlot4-8 fear 1

#Disease Damage
execute if score slot1isatk booleans matches 1 run scoreboard players operation slot1 hp -= slot1Disease disease
execute if score slot2isatk booleans matches 1 run scoreboard players operation slot2 hp -= slot2Disease disease
execute if score slot3isatk booleans matches 1 run scoreboard players operation slot3 hp -= slot3Disease disease
execute if score slot4isatk booleans matches 1 run scoreboard players operation slot4 hp -= slot4Disease disease
execute if score slot5isatk booleans matches 1 run scoreboard players operation slot5 hp -= slot5Disease disease
execute if score slot6isatk booleans matches 1 run scoreboard players operation slot6 hp -= slot6Disease disease
execute if score slot7isatk booleans matches 1 run scoreboard players operation slot7 hp -= slot7Disease disease
execute if score slot8isatk booleans matches 1 run scoreboard players operation slot8 hp -= slot8Disease disease

#Mark Duration
#execute if score slot1isatk booleans matches 1 run execute if score durationSlot1 mark matches 1.. run scoreboard players remove durationSlot1 mark 1
#execute if score slot2isatk booleans matches 1 run execute if score durationSlot2 mark matches 1.. run scoreboard players remove durationSlot2 mark 1
#execute if score slot3isatk booleans matches 1 run execute if score durationSlot3 mark matches 1.. run scoreboard players remove durationSlot3 mark 1
#execute if score slot4isatk booleans matches 1 run execute if score durationSlot4 mark matches 1.. run scoreboard players remove durationSlot4 mark 1
#execute if score slot5isatk booleans matches 1 run execute if score durationSlot5 mark matches 1.. run scoreboard players remove durationSlot5 mark 1
#execute if score slot6isatk booleans matches 1 run execute if score durationSlot6 mark matches 1.. run scoreboard players remove durationSlot6 mark 1
#execute if score slot7isatk booleans matches 1 run execute if score durationSlot7 mark matches 1.. run scoreboard players remove durationSlot7 mark 1
#execute if score slot8isatk booleans matches 1 run execute if score durationSlot8 mark matches 1.. run scoreboard players remove durationSlot8 mark 1

#bleed duration
execute if score slot1isatk booleans matches 1 run execute if score slot1bleeding booleaneffects matches 1.. run scoreboard players remove slot1bleeding booleaneffects 1
execute if score slot2isatk booleans matches 1 run execute if score slot2bleeding booleaneffects matches 1.. run scoreboard players remove slot2bleeding booleaneffects 1
execute if score slot3isatk booleans matches 1 run execute if score slot3bleeding booleaneffects matches 1.. run scoreboard players remove slot3bleeding booleaneffects 1
execute if score slot4isatk booleans matches 1 run execute if score slot4bleeding booleaneffects matches 1.. run scoreboard players remove slot4bleeding booleaneffects 1
execute if score slot5isatk booleans matches 1 run execute if score slot5bleeding booleaneffects matches 1.. run scoreboard players remove slot5bleeding booleaneffects 1
execute if score slot6isatk booleans matches 1 run execute if score slot6bleeding booleaneffects matches 1.. run scoreboard players remove slot6bleeding booleaneffects 1
execute if score slot7isatk booleans matches 1 run execute if score slot7bleeding booleaneffects matches 1.. run scoreboard players remove slot7bleeding booleaneffects 1
execute if score slot8isatk booleans matches 1 run execute if score slot8bleeding booleaneffects matches 1.. run scoreboard players remove slot8bleeding booleaneffects 1


#disarm duration
execute if score slot1isatk booleans matches 1 run execute if score disarmedslot1 booleaneffects matches 1.. run scoreboard players remove disarmedslot1 booleaneffects 1
execute if score slot2isatk booleans matches 1 run execute if score disarmedslot2 booleaneffects matches 1.. run scoreboard players remove disarmedslot2 booleaneffects 1
execute if score slot3isatk booleans matches 1 run execute if score disarmedslot3 booleaneffects matches 1.. run scoreboard players remove disarmedslot3 booleaneffects 1
execute if score slot4isatk booleans matches 1 run execute if score disarmedslot4 booleaneffects matches 1.. run scoreboard players remove disarmedslot4 booleaneffects 1
execute if score slot5isatk booleans matches 1 run execute if score disarmedslot5 booleaneffects matches 1.. run scoreboard players remove disarmedslot5 booleaneffects 1
execute if score slot6isatk booleans matches 1 run execute if score disarmedslot6 booleaneffects matches 1.. run scoreboard players remove disarmedslot6 booleaneffects 1
execute if score slot7isatk booleans matches 1 run execute if score disarmedslot7 booleaneffects matches 1.. run scoreboard players remove disarmedslot7 booleaneffects 1
execute if score slot8isatk booleans matches 1 run execute if score disarmedslot8 booleaneffects matches 1.. run scoreboard players remove disarmedslot8 booleaneffects 1

#Double Target
execute if score slot5isatk booleans matches 1 run execute if score doubleatk slot1 matches 1 run execute if score useddoubleatk slot1 matches 1 run function ch:turnend
execute if score slot6isatk booleans matches 1 run execute if score doubleatk slot2 matches 1 run execute if score useddoubleatk slot2 matches 1 run function ch:turnend
execute if score slot7isatk booleans matches 1 run execute if score doubleatk slot3 matches 1 run execute if score useddoubleatk slot3 matches 1 run function ch:turnend
execute if score slot8isatk booleans matches 1 run execute if score doubleatk slot4 matches 1 run execute if score useddoubleatk slot4 matches 1 run function ch:turnend
execute if score slot5isatk booleans matches 1 run execute if score doubleatk slot5 matches 1 run execute if score useddoubleatk slot5 matches 1 run function ch:turnend
execute if score slot6isatk booleans matches 1 run execute if score doubleatk slot6 matches 1 run execute if score useddoubleatk slot6 matches 1 run function ch:turnend
execute if score slot7isatk booleans matches 1 run execute if score doubleatk slot7 matches 1 run execute if score useddoubleatk slot7 matches 1 run function ch:turnend
execute if score slot8isatk booleans matches 1 run execute if score doubleatk slot8 matches 1 run execute if score useddoubleatk slot8 matches 1 run function ch:turnend

#Attack boolean reset
scoreboard players set slot1isatk booleans 0
scoreboard players set slot2isatk booleans 0
scoreboard players set slot3isatk booleans 0
scoreboard players set slot4isatk booleans 0
scoreboard players set slot5isatk booleans 0
scoreboard players set slot6isatk booleans 0
scoreboard players set slot7isatk booleans 0
scoreboard players set slot8isatk booleans 0
scoreboard players set p1isatk booleans 0
scoreboard players set p2isatk booleans 0
scoreboard players set attackIsOngoingGame1 booleans 0
