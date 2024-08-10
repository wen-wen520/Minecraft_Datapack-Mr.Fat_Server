# bossbar
bossbar set w_w:auto_sleep visible false
# message
tellraw @a "§b服务器 §7> §f已经 §a成功§f 跳过这个夜晚"
title @a actionbar "§7今夜文文终于可以睡个好觉咯"
execute as @a at @s run playsound entity.cat.purr master @s ~ ~ ~
# execute
execute store result storage w_w:datapack/mr_fat/utilities/auto_sleep jumped_time int 1 store result score jumped_time w_w.daytime run scoreboard players operation jump_to_time w_w.daytime -= daytime w_w.daytime
scoreboard players set jump_to_time w_w.daytime 23458
function mr_fat:utilities/auto_sleep/jump_to_time with storage w_w:datapack/mr_fat/utilities/auto_sleep
# reset
scoreboard players set auto_sleep_inquiry w_w.mrfat.config 0