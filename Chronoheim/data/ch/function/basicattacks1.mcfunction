#Attack Modifiers
scoreboard players operation slot5 atkmodifiers = attackBuffSlot5 atkmodifiers
scoreboard players operation slot5 atkmodifiers -= attackDebuffSlot5 atkmodifiers
scoreboard players operation slot6 atkmodifiers = attackBuffSlot6 atkmodifiers
scoreboard players operation slot6 atkmodifiers -= attackDebuffSlot6 atkmodifiers
scoreboard players operation slot7 atkmodifiers = attackBuffSlot7 atkmodifiers
scoreboard players operation slot7 atkmodifiers -= attackDebuffSlot7 atkmodifiers
scoreboard players operation slot8 atkmodifiers = attackBuffSlot8 atkmodifiers
scoreboard players operation slot8 atkmodifiers -= attackDebuffSlot8 atkmodifiers


#basic attack functions
#slot 5
execute if score slot5isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot5
execute if score slot5isatk booleans matches 1 run scoreboard players operation atk1 saves += slot5 atkmodifiers
execute if score slot5isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot1
execute if score slot5isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot1
execute if score slot5isatk booleans matches 1 run scoreboard players operation shield slot1 -= atk1 saves
#slot 6
execute if score slot6isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot6
execute if score slot6isatk booleans matches 1 run scoreboard players operation atk1 saves += slot6 atkmodifiers
execute if score slot6isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot1
execute if score slot6isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot1
execute if score slot6isatk booleans matches 1 run scoreboard players operation shield slot1 -= atk1 saves
#slot 7
execute if score slot7isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot7
execute if score slot7isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot1
execute if score slot7isatk booleans matches 1 run scoreboard players operation atk1 saves += slot7 atkmodifiers
execute if score slot7isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot1
execute if score slot7isatk booleans matches 1 run scoreboard players operation shield slot1 -= atk1 saves
#slot 8
execute if score slot8isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot8
execute if score slot8isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot1
execute if score slot8isatk booleans matches 1 run scoreboard players operation atk1 saves += slot8 atkmodifiers
execute if score slot8isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot1
execute if score slot8isatk booleans matches 1 run scoreboard players operation shield slot1 -= atk1 saves
#damage + shield reset (all)
execute if score shield slot1 matches ..0 run scoreboard players operation slot1 hp -= shield slot1
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0


#splash
#slot5
execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot5
execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot5 atkmodifiers
execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot2
execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot5
execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot2
execute if score ward slot2 matches 0 run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation shield slot2 -= splashdamage saves
execute if score ward slot2 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run function ch:wardslot2
#slot6
execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot6
execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot6 atkmodifiers
execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot2
execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot6
execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot2
execute if score ward slot2 matches 0 run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation shield slot2 -= splashdamage saves
execute if score ward slot2 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run function ch:wardslot2
#slot7
execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot7
execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot7 atkmodifiers
execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot2
execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot7
execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot2
execute if score ward slot2 matches 0 run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation shield slot2 -= splashdamage saves
execute if score ward slot2 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run function ch:wardslot2
#slot8
execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot8
execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot8 atkmodifiers
execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot2
execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot8
execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot2
execute if score ward slot2 matches 0 run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation shield slot2 -= splashdamage saves
execute if score ward slot2 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run function ch:wardslot2
#damage + shield reset (all)
execute if score shield slot2 matches ..0 run scoreboard players operation slot2 hp -= shield slot2
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0


#lifesteal
#slot 5
execute if score lifesteal slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot5
execute if score lifesteal slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifesteal saves += slot5 atkmodifiers
execute if score lifesteal slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifesteal saves += marks slot1
execute if score lifesteal slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifesteal saves /= atkmultiplier slot1
execute if score lifesteal slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot5
execute if score slot5bleeding booleaneffects matches 0 run execute if score lifesteal slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation slot5 hp += lifesteal saves
#slot 6
execute if score lifesteal slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot6
execute if score lifesteal slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifesteal saves += slot6 atkmodifiers
execute if score lifesteal slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifesteal saves += marks slot1
execute if score lifesteal slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifesteal saves /= atkmultiplier slot1
execute if score lifesteal slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot6
execute if score slot6bleeding booleaneffects matches 0 run execute if score lifesteal slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation slot6 hp += lifesteal saves
#slot 7
execute if score lifesteal slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot7
execute if score lifesteal slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifesteal saves += slot7 atkmodifiers
execute if score lifesteal slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifesteal saves += marks slot1
execute if score lifesteal slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifesteal saves /= atkmultiplier slot1
execute if score lifesteal slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot7
execute if score slot7bleeding booleaneffects matches 0 run execute if score lifesteal slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation slot7 hp += lifesteal saves
#slot 8
execute if score lifesteal slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot8
execute if score lifesteal slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifesteal saves += slot8 atkmodifiers
execute if score lifesteal slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifesteal saves += marks slot1
execute if score lifesteal slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifesteal saves /= atkmultiplier slot1
execute if score lifesteal slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot8
execute if score slot8bleeding booleaneffects matches 0 run execute if score lifesteal slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation slot8 hp += lifesteal saves


#lifesteal + splash
#slot 5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot5 atkmodifiers
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot2
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot2
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot5
execute if score slot2 hp matches 1.. run execute if score ward slot2 matches 0 run execute if score slot5bleeding booleaneffects matches 0 run execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation slot5 hp += lifestealsplash saves
#slot 6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot6 atkmodifiers
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot2
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot2
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot6
execute if score slot2 hp matches 1.. run execute if score ward slot2 matches 0 run execute if score slot6bleeding booleaneffects matches 0 run execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation slot6 hp += lifestealsplash saves
#slot 7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot7 atkmodifiers
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot2
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot2
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot7
execute if score slot2 hp matches 1.. run execute if score ward slot2 matches 0 run execute if score slot7bleeding booleaneffects matches 0 run execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation slot7 hp += lifestealsplash saves
#slot 8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot8 atkmodifiers
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot2
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot2
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot8
execute if score slot2 hp matches 1.. run execute if score ward slot2 matches 0 run execute if score slot8bleeding booleaneffects matches 0 run execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation slot8 hp += lifestealsplash saves


#double target + turn end trigger
#regular attack
execute if score slot5isatk booleans matches 1 run execute if score doubleatk slot5 matches 0 run function ch:turnend
execute if score slot6isatk booleans matches 1 run execute if score doubleatk slot6 matches 0 run function ch:turnend
execute if score slot7isatk booleans matches 1 run execute if score doubleatk slot7 matches 0 run function ch:turnend
execute if score slot8isatk booleans matches 1 run execute if score doubleatk slot8 matches 0 run function ch:turnend
#double target (1st hit)
execute if score slot5isatk booleans matches 1 run execute if score doubleatk slot5 matches 1 run execute if score useddoubleatk slot5 matches 0 run function ch:basicattackstartp2
execute if score slot5isatk booleans matches 1 run execute if score doubleatk slot5 matches 1 run execute if score useddoubleatk slot5 matches 0 run scoreboard players set useddoubleatk slot5 1
execute if score slot6isatk booleans matches 1 run execute if score doubleatk slot6 matches 1 run execute if score useddoubleatk slot6 matches 0 run function ch:basicattackstartp2
execute if score slot6isatk booleans matches 1 run execute if score doubleatk slot6 matches 1 run execute if score useddoubleatk slot6 matches 0 run scoreboard players set useddoubleatk slot6 1
execute if score slot7isatk booleans matches 1 run execute if score doubleatk slot7 matches 1 run execute if score useddoubleatk slot7 matches 0 run function ch:basicattackstartp2
execute if score slot7isatk booleans matches 1 run execute if score doubleatk slot7 matches 1 run execute if score useddoubleatk slot7 matches 0 run scoreboard players set useddoubleatk slot7 1
execute if score slot8isatk booleans matches 1 run execute if score doubleatk slot8 matches 1 run execute if score useddoubleatk slot8 matches 0 run function ch:basicattackstartp2
execute if score slot8isatk booleans matches 1 run execute if score doubleatk slot8 matches 1 run execute if score useddoubleatk slot8 matches 0 run scoreboard players set useddoubleatk slot8 1
#double target (2nd hit)
execute if score slot5isatk booleans matches 1 run execute if score doubleatk slot5 matches 1 run execute if score useddoubleatk slot5 matches 1 run function ch:turnend
execute if score slot6isatk booleans matches 1 run execute if score doubleatk slot6 matches 1 run execute if score useddoubleatk slot6 matches 1 run function ch:turnend
execute if score slot7isatk booleans matches 1 run execute if score doubleatk slot7 matches 1 run execute if score useddoubleatk slot7 matches 1 run function ch:turnend
execute if score slot8isatk booleans matches 1 run execute if score doubleatk slot8 matches 1 run execute if score useddoubleatk slot8 matches 1 run function ch:turnend