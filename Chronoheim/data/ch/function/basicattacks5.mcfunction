#basic attack functions + attack modifiers
#slot 5
execute if score slot1isatk booleans matches 1 run scoreboard players operation atk saves = atk1 slot1
execute if score slot1isatk booleans matches 1 run scoreboard players operation atk saves += slot1 atkmodifiers
execute if score slot1isatk booleans matches 1 run scoreboard players operation atk saves += marks slot1
execute if score slot1isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot1
execute if score slot1isatk booleans matches 1 run scoreboard players operation shield slot1 -= atk1 saves
#slot 6
execute if score slot2isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot2
execute if score slot2isatk booleans matches 1 run scoreboard players operation atk1 saves += slot2 atkmodifiers
execute if score slot2isatk booleans matches 1 run scoreboard players operation atk saves += marks slot1
execute if score slot2isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot1
execute if score slot2isatk booleans matches 1 run scoreboard players operation shield slot1 -= atk1 saves
#slot 7
execute if score slot3isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot3
execute if score slot3isatk booleans matches 1 run scoreboard players operation atk saves += marks slot1
execute if score slot3isatk booleans matches 1 run scoreboard players operation atk1 saves += slot3 atkmodifiers
execute if score slot3isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot1
execute if score slot3isatk booleans matches 1 run scoreboard players operation shield slot1 -= atk1 saves
#slot 8
execute if score slot4isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot4
execute if score slot4isatk booleans matches 1 run scoreboard players operation atk saves += marks slot1
execute if score slot4isatk booleans matches 1 run scoreboard players operation atk1 saves += slot4 atkmodifiers
execute if score slot4isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot1
execute if score slot4isatk booleans matches 1 run scoreboard players operation shield slot1 -= atk1 saves
#damage + shield reset (all)
execute if score shield slot1 matches ..0 run scoreboard players operation slot1 hp -= shield slot1
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0




#splash
#slot1
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot1
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot1 atkmodifiers
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot6
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot1
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot6
execute if score ward slot6 matches 0 run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation shield slot6 -= splashdamage saves
execute if score ward slot6 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run function ch:ward
#slot2
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot2
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot2 atkmodifiers
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot6
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot2
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot6
execute if score ward slot6 matches 0 run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation shield slot6 -= splashdamage saves
execute if score ward slot6 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run function ch:ward
#slot3
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot3
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot3 atkmodifiers
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot6
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot3
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot6
execute if score ward slot6 matches 0 run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation shield slot6 -= splashdamage saves
execute if score ward slot6 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run function ch:ward
#slot4
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot4
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot4 atkmodifiers
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot6
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot4
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot6
execute if score ward slot6 matches 0 run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation shield slot6 -= splashdamage saves
execute if score ward slot6 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run function ch:ward
#damage + shield reset (all)
execute if score shield slot6 matches ..0 run scoreboard players operation slot6 hp -= shield slot6
execute if score shield slot6 matches ..0 run scoreboard players set shield slot6 0




#lifesteal
#slot 5
execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot1
execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifesteal saves += slot1 atkmodifiers
execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifesteal saves += marks slot1
execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifesteal saves /= atkmultiplier slot1
execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot1
execute if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation slot1 hp += lifesteal saves
#slot 6
execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot2
execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifesteal saves += slot2 atkmodifiers
execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifesteal saves += marks slot1
execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifesteal saves /= atkmultiplier slot1
execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot2
execute if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation slot2 hp += lifesteal saves
#slot 7
execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot3
execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifesteal saves += slot3 atkmodifiers
execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifesteal saves += marks slot1
execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifesteal saves /= atkmultiplier slot1
execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot3
execute if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation slot3 hp += lifesteal saves
#slot 8
execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot4
execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifesteal saves += slot4 atkmodifiers
execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifesteal saves += marks slot1
execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifesteal saves /= atkmultiplier slot1
execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot4
execute if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation slot4 hp += lifesteal saves




#lifesteal + splash
#slot 5
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot1 atkmodifiers
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot6
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot6
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot1
execute if score slot6 hp matches 1.. run execute if score ward slot6 matches 0 run execute if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation slot1 hp += lifestealsplash saves
#slot 6
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot2 atkmodifiers
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot6
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot6
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot2
execute if score slot6 hp matches 1.. run execute if score ward slot6 matches 0 run execute if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation slot2 hp += lifestealsplash saves
#slot 7
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot3 atkmodifiers
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot6
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot6
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot3
execute if score slot6 hp matches 1.. run execute if score ward slot6 matches 0 run execute if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation slot3 hp += lifestealsplash saves
#slot 8
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot4 atkmodifiers
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot6
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot6
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot4
execute if score slot6 hp matches 1.. run execute if score ward slot6 matches 0 run execute if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation slot4 hp += lifestealsplash saves




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



