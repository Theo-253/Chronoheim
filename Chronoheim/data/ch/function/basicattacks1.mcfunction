#basic attack functions + attack modifiers
execute if score slot5isatk booleans matches 1 run scoreboard players operation shield slot1 -= atk slot5
execute if score slot5isatk booleans matches 1 run scoreboard players operation shield slot1 -= slot5 atkmodifiers
execute if score slot6isatk booleans matches 1 run scoreboard players operation shield slot1 -= atk slot6
execute if score slot6isatk booleans matches 1 run scoreboard players operation shield slot1 -= slot6 atkmodifiers
execute if score slot7isatk booleans matches 1 run scoreboard players operation shield slot1 -= atk slot7
execute if score slot7isatk booleans matches 1 run scoreboard players operation shield slot1 -= slot7 atkmodifiers
execute if score slot8isatk booleans matches 1 run scoreboard players operation shield slot1 -= atk slot8
execute if score slot8isatk booleans matches 1 run scoreboard players operation shield slot1 -= slot8 atkmodifiers
execute if score shield slot1 matches ..0 run scoreboard players operation slot1 hp -= shield slot1
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0

#splash
execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot5
execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot5
execute if score ward slot2 matches 0 run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation shield slot2 -= splashdamage saves
execute if score ward slot2 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run function ch:ward

execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot6
execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot6
execute if score ward slot2 matches 0 run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation shield slot2 -= splashdamage saves
execute if score ward slot2 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run function ch:ward

execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot7
execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot7
execute if score ward slot2 matches 0 run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation shield slot2 -= splashdamage saves
execute if score ward slot2 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run function ch:ward

execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot8
execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot8
execute if score ward slot2 matches 0 run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation shield slot2 -= splashdamage saves
execute if score ward slot2 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run function ch:ward

execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0

#lifesteal
execute if score lifesteal slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot5
execute if score lifesteal slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot5
execute if score slot5bleeding booleaneffects matches 0 run execute if score lifesteal slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation slot5 hp += lifesteal saves

execute if score lifesteal slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot6
execute if score lifesteal slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot6
execute if score slot6bleeding booleaneffects matches 0 run execute if score lifesteal slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation slot6 hp += lifesteal saves

execute if score lifesteal slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot7
execute if score lifesteal slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot7
execute if score slot7bleeding booleaneffects matches 0 run execute if score lifesteal slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation slot7 hp += lifesteal saves

execute if score lifesteal slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot8
execute if score lifesteal slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot8
execute if score slot8bleeding booleaneffects matches 0 run execute if score lifesteal slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation slot8 hp += lifesteal saves

#lifesteal + splash
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot5
execute if score ward slot2 matches 0 run execute if score slot5bleeding booleaneffects matches 0 run execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation slot5 hp += lifestealsplash saves

execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot6
execute if score ward slot2 matches 0 run execute if score slot6bleeding booleaneffects matches 0 run execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation slot6 hp += lifestealsplash saves

execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot7
execute if score ward slot2 matches 0 run execute if score slot7bleeding booleaneffects matches 0 run execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation slot7 hp += lifestealsplash saves

execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot8
execute if score ward slot2 matches 0 run execute if score slot8bleeding booleaneffects matches 0 run execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation slot8 hp += lifestealsplash saves

#double target + turn end trigger
execute if score slot5isatk booleans matches 1 run execute if score doubleatk slot5 matches 0 run function ch:turnend
execute if score slot6isatk booleans matches 1 run execute if score doubleatk slot6 matches 0 run function ch:turnend
execute if score slot7isatk booleans matches 1 run execute if score doubleatk slot7 matches 0 run function ch:turnend
execute if score slot8isatk booleans matches 1 run execute if score doubleatk slot8 matches 0 run function ch:turnend

execute if score slot5isatk booleans matches 1 run execute if score doubleatk slot5 matches 1 run execute if score useddoubleatk slot5 matches 0 run function ch:basicattackstartp2
execute if score slot5isatk booleans matches 1 run execute if score doubleatk slot5 matches 1 run execute if score useddoubleatk slot5 matches 0 run scoreboard players set useddoubleatk slot5 1
execute if score slot6isatk booleans matches 1 run execute if score doubleatk slot6 matches 1 run execute if score useddoubleatk slot6 matches 0 run function ch:basicattackstartp2
execute if score slot6isatk booleans matches 1 run execute if score doubleatk slot6 matches 1 run execute if score useddoubleatk slot6 matches 0 run scoreboard players set useddoubleatk slot6 1
execute if score slot7isatk booleans matches 1 run execute if score doubleatk slot7 matches 1 run execute if score useddoubleatk slot7 matches 0 run function ch:basicattackstartp2
execute if score slot7isatk booleans matches 1 run execute if score doubleatk slot7 matches 1 run execute if score useddoubleatk slot7 matches 0 run scoreboard players set useddoubleatk slot7 1
execute if score slot8isatk booleans matches 1 run execute if score doubleatk slot8 matches 1 run execute if score useddoubleatk slot8 matches 0 run function ch:basicattackstartp2
execute if score slot8isatk booleans matches 1 run execute if score doubleatk slot8 matches 1 run execute if score useddoubleatk slot8 matches 0 run scoreboard players set useddoubleatk slot8 1

execute if score slot5isatk booleans matches 1 run execute if score doubleatk slot5 matches 1 run execute if score useddoubleatk slot5 matches 1 run function ch:turnend
execute if score slot6isatk booleans matches 1 run execute if score doubleatk slot6 matches 1 run execute if score useddoubleatk slot6 matches 1 run function ch:turnend
execute if score slot7isatk booleans matches 1 run execute if score doubleatk slot7 matches 1 run execute if score useddoubleatk slot7 matches 1 run function ch:turnend
execute if score slot8isatk booleans matches 1 run execute if score doubleatk slot8 matches 1 run execute if score useddoubleatk slot8 matches 1 run function ch:turnend