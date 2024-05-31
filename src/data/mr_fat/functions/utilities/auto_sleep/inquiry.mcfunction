# bossbar
bossbar set w_w:auto_sleep players @a
bossbar set w_w:auto_sleep visible true
bossbar set w_w:auto_sleep value 20
# message
tellraw @a "§b服务器 §7> §f快到睡觉时间了, 即将自动跳过这个夜晚"
tellraw @a [{"text":"§b服务器 §7> §f[§b§n戳这里§r§f] 放文文去睡觉 §7(默认)","clickEvent": {"action":"run_command","value": "/trigger w_w.auto_sleep set 1"}}]
tellraw @a [{"text":"§b服务器 §7> §f[§b§n戳这里§r§f] 不让文文去睡觉","clickEvent": {"action":"run_command","value": "/trigger w_w.auto_sleep set 0"}}]
title @a actionbar "§7文文睡眼惺忪的问是否可以睡个好觉"
execute as @a at @s run playsound block.bell.use master @s ~ ~ ~
# score
scoreboard objectives remove w_w.auto_sleep
scoreboard objectives add w_w.auto_sleep trigger
scoreboard players enable @a w_w.auto_sleep
# countdown
scoreboard players set auto_sleep_inquiry w_w.mrfat.config 1
scoreboard players set auto_sleep_cd w_w.mrfat.config 20
schedule function mr_fat:utilities/auto_sleep/countdown 1s