# message
tellraw @a "§b服务器 §7> §f已经 §a成功§f 跳过这个夜晚"
title @a actionbar "§7今夜文文终于可以睡个好觉咯"
execute as @a at @s run playsound entity.cat.purr master @s ~ ~ ~
# execute
time set 23458
# reset
scoreboard players set auto_sleep_inquiry w_w.mrfat.config 0