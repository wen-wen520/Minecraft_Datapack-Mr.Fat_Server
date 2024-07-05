# bossbar
bossbar set w_w:auto_sleep visible false
# message
tellraw @a ["§b服务器 §7> §f因为 ",{"selector":"@a[scores={w_w.auto_sleep=0}]"}," §f的阻止, 已经 §c取消 §f自动跳过这个夜晚"]
title @a actionbar "§7文文一边打着哈欠一边垂头丧气的离开了"
execute as @a at @s run playsound entity.cat.hurt master @s ~ ~ ~
# reset
scoreboard players set auto_sleep_inquiry w_w.mrfat.config 0