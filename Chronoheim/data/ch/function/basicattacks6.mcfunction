#Attack modifiers
scoreboard players operation slot1 atkmodifiers = attackBuffSlot1 atkmodifiers
scoreboard players operation slot1 atkmodifiers -= attackDebuffSlot1 atkmodifiers
scoreboard players operation slot2 atkmodifiers = attackBuffSlot2 atkmodifiers
scoreboard players operation slot2 atkmodifiers -= attackDebuffSlot2 atkmodifiers
scoreboard players operation slot3 atkmodifiers = attackBuffSlot3 atkmodifiers
scoreboard players operation slot3 atkmodifiers -= attackDebuffSlot3 atkmodifiers
scoreboard players operation slot4 atkmodifiers = attackBuffSlot4 atkmodifiers
scoreboard players operation slot4 atkmodifiers -= attackDebuffSlot4 atkmodifiers


#basic attack functions
#slot 5
execute if score slot1isatk booleans matches 1 run scoreboard players operation atk saves = atk1 slot1
execute if score slot1isatk booleans matches 1 run scoreboard players operation atk saves += slot1 atkmodifiers
execute if score slot1isatk booleans matches 1 run scoreboard players operation atk saves += marks slot6
execute if score slot1isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot6
execute if score slot1isatk booleans matches 1 run scoreboard players operation shield slot6 -= atk1 saves
#slot 6
execute if score slot2isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot2
execute if score slot2isatk booleans matches 1 run scoreboard players operation atk1 saves += slot2 atkmodifiers
execute if score slot2isatk booleans matches 1 run scoreboard players operation atk saves += marks slot6
execute if score slot2isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot6
execute if score slot2isatk booleans matches 1 run scoreboard players operation shield slot6 -= atk1 saves
#slot 7
execute if score slot3isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot3
execute if score slot3isatk booleans matches 1 run scoreboard players operation atk saves += marks slot6
execute if score slot3isatk booleans matches 1 run scoreboard players operation atk1 saves += slot3 atkmodifiers
execute if score slot3isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot6
execute if score slot3isatk booleans matches 1 run scoreboard players operation shield slot6 -= atk1 saves
#slot 8
execute if score slot4isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot4
execute if score slot4isatk booleans matches 1 run scoreboard players operation atk saves += marks slot6
execute if score slot4isatk booleans matches 1 run scoreboard players operation atk1 saves += slot4 atkmodifiers
execute if score slot4isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot6
execute if score slot4isatk booleans matches 1 run scoreboard players operation shield slot6 -= atk1 saves
#damage + shield reset (all)
execute if score shield slot6 matches ..0 run scoreboard players operation slot6 hp -= shield slot6
execute if score shield slot6 matches ..0 run scoreboard players set shield slot6 0


#splash
#slot1
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot1
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot1 atkmodifiers
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot5
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot1
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot5
execute if score ward slot5 matches 0 run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation shield slot5 -= splashdamage saves
execute if score ward slot5 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run function ch:wardslot5
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves *= atkmultiplier slot5
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves -= marks slot5
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot7
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot7
execute if score ward slot7 matches 0 run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation shield slot7 -= splashdamage saves
execute if score ward slot7 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run function ch:wardslot7
#slot2
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot2
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot2 atkmodifiers
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot5
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot2
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot5
execute if score ward slot5 matches 0 run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation shield slot5 -= splashdamage saves
execute if score ward slot5 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run function ch:wardslot5
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves *= atkmultiplier slot5
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves -= marks slot5
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot7
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot7
execute if score ward slot7 matches 0 run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation shield slot7 -= splashdamage saves
execute if score ward slot7 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run function ch:wardslot7
#slot3
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot3
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot3 atkmodifiers
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot5
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot3
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot5
execute if score ward slot5 matches 0 run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation shield slot5 -= splashdamage saves
execute if score ward slot5 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run function ch:wardslot5
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves *= atkmultiplier slot5
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves -= marks slot5
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot7
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot7
execute if score ward slot7 matches 0 run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation shield slot7 -= splashdamage saves
execute if score ward slot7 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run function ch:wardslot7
#slot4
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot4
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot4 atkmodifiers
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot5
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot4
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot5
execute if score ward slot5 matches 0 run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation shield slot5 -= splashdamage saves
execute if score ward slot5 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run function ch:wardslot5
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves *= atkmultiplier slot5
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves -= marks slot5
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot7
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot7
execute if score ward slot7 matches 0 run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation shield slot7 -= splashdamage saves
execute if score ward slot7 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run function ch:wardslot7
#damage + shield reset (all)
execute if score shield slot5 matches ..0 run scoreboard players operation slot5 hp -= shield slot5
execute if score shield slot5 matches ..0 run scoreboard players set shield slot5 0
execute if score shield slot7 matches ..0 run scoreboard players operation slot7 hp -= shield slot7
execute if score shield slot7 matches ..0 run scoreboard players set shield slot7 0


#lifesteal
#slot 5
execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot1
execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifesteal saves += slot1 atkmodifiers
execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifesteal saves += marks slot6
execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifesteal saves /= atkmultiplier slot6
execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot1
execute if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation slot1 hp += lifesteal saves
#slot 6
execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot2
execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifesteal saves += slot2 atkmodifiers
execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifesteal saves += marks slot6
execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifesteal saves /= atkmultiplier slot6
execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot2
execute if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation slot2 hp += lifesteal saves
#slot 7
execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot3
execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifesteal saves += slot3 atkmodifiers
execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifesteal saves += marks slot6
execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifesteal saves /= atkmultiplier slot6
execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot3
execute if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation slot3 hp += lifesteal saves
#slot 8
execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot4
execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifesteal saves += slot4 atkmodifiers
execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifesteal saves += marks slot6
execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifesteal saves /= atkmultiplier slot6
execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot4
execute if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation slot4 hp += lifesteal saves


#lifesteal + splash
#slot 5
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot1 atkmodifiers
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot5
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot5
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot1
execute if score slot5 hp matches 1.. run execute if score ward slot5 matches 0 run execute if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation slot1 hp += lifestealsplash saves
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves *= atkmultiplier slot5
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves -= marks slot5
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot7
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot7
execute if score slot7 hp matches 1.. run execute if score ward slot7 matches 0 run execute if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation slot1 hp += lifestealsplash saves
#slot 6
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot2 atkmodifiers
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot5
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot5
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot2
execute if score slot5 hp matches 1.. run execute if score ward slot5 matches 0 run execute if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation slot2 hp += lifestealsplash saves
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves *= atkmultiplier slot5
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves -= marks slot5
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot7
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot7
execute if score slot7 hp matches 1.. run execute if score ward slot7 matches 0 run execute if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation slot2 hp += lifestealsplash saves
#slot 7
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot3 atkmodifiers
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot5
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot5
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot3
execute if score slot5 hp matches 1.. run execute if score ward slot5 matches 0 run execute if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation slot3 hp += lifestealsplash saves
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves *= atkmultiplier slot5
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves -= marks slot5
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot7
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot7
execute if score slot7 hp matches 1.. run execute if score ward slot7 matches 0 run execute if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation slot3 hp += lifestealsplash saves
#slot 8
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot4 atkmodifiers
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot5
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot5
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot4
execute if score slot5 hp matches 1.. run execute if score ward slot5 matches 0 run execute if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation slot4 hp += lifestealsplash saves
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves *= atkmultiplier slot5
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves -= marks slot5
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot7
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot7
execute if score slot7 hp matches 1.. run execute if score ward slot7 matches 0 run execute if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation slot4 hp += lifestealsplash saves


#double target + turn end trigger
#regular attack
execute if score slot1isatk booleans matches 1 run execute if score doubleatk slot1 matches 0 run function ch:turnend
execute if score slot2isatk booleans matches 1 run execute if score doubleatk slot2 matches 0 run function ch:turnend
execute if score slot3isatk booleans matches 1 run execute if score doubleatk slot3 matches 0 run function ch:turnend
execute if score slot4isatk booleans matches 1 run execute if score doubleatk slot4 matches 0 run function ch:turnend
#double target (1st hit)
execute if score slot1isatk booleans matches 1 run execute if score doubleatk slot1 matches 1 run execute if score useddoubleatk slot1 matches 0 run function ch:basicattackstartp2
execute if score slot1isatk booleans matches 1 run execute if score doubleatk slot1 matches 1 run execute if score useddoubleatk slot1 matches 0 run scoreboard players set useddoubleatk slot1 1
execute if score slot2isatk booleans matches 1 run execute if score doubleatk slot2 matches 1 run execute if score useddoubleatk slot2 matches 0 run function ch:basicattackstartp2
execute if score slot2isatk booleans matches 1 run execute if score doubleatk slot2 matches 1 run execute if score useddoubleatk slot2 matches 0 run scoreboard players set useddoubleatk slot2 1
execute if score slot3isatk booleans matches 1 run execute if score doubleatk slot3 matches 1 run execute if score useddoubleatk slot3 matches 0 run function ch:basicattackstartp2
execute if score slot3isatk booleans matches 1 run execute if score doubleatk slot3 matches 1 run execute if score useddoubleatk slot3 matches 0 run scoreboard players set useddoubleatk slot3 1
execute if score slot4isatk booleans matches 1 run execute if score doubleatk slot4 matches 1 run execute if score useddoubleatk slot4 matches 0 run function ch:basicattackstartp2
execute if score slot4isatk booleans matches 1 run execute if score doubleatk slot4 matches 1 run execute if score useddoubleatk slot4 matches 0 run scoreboard players set useddoubleatk slot4 1
#double target (2nd hit)
execute if score slot1isatk booleans matches 1 run execute if score doubleatk slot1 matches 1 run execute if score useddoubleatk slot1 matches 1 run function ch:turnend
execute if score slot2isatk booleans matches 1 run execute if score doubleatk slot2 matches 1 run execute if score useddoubleatk slot2 matches 1 run function ch:turnend
execute if score slot3isatk booleans matches 1 run execute if score doubleatk slot3 matches 1 run execute if score useddoubleatk slot3 matches 1 run function ch:turnend
execute if score slot4isatk booleans matches 1 run execute if score doubleatk slot4 matches 1 run execute if score useddoubleatk slot4 matches 1 run function ch:turnend