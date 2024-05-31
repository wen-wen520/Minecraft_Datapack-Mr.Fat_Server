# bossbar
bossbar set w_w:auto_sleep players @a
execute store result bossbar w_w:auto_sleep value run scoreboard players remove auto_sleep_cd w_w.mrfat.config 1
execute if entity @a[scores={w_w.auto_sleep=0}] run bossbar set w_w:auto_sleep name ["§f服务器将在 ",{"score":{"name": "auto_sleep_cd","objective": "w_w.mrfat.config"},"color":"green"}," §f秒§f后 §c不§f 跳过夜晚"]
execute if entity @a[scores={w_w.auto_sleep=0}] run bossbar set w_w:auto_sleep color red
execute unless entity @a[scores={w_w.auto_sleep=0}] run bossbar set w_w:auto_sleep name ["§f服务器将在 ",{"score":{"name": "auto_sleep_cd","objective": "w_w.mrfat.config"},"color":"green"}," §f秒§f后自动跳过夜晚"]
execute unless entity @a[scores={w_w.auto_sleep=0}] run bossbar set w_w:auto_sleep color blue
# score
scoreboard players enable @a w_w.auto_sleep
# cancel
execute if entity @a[scores={w_w.auto_sleep=0}] if score auto_sleep_cd w_w.mrfat.config matches 1 run schedule function mr_fat:utilities/auto_sleep/cancel 1s
# execute
execute unless entity @a[scores={w_w.auto_sleep=0}] if score auto_sleep_cd w_w.mrfat.config matches 1 run schedule function mr_fat:utilities/auto_sleep/execute 1s
# repeat
execute if score auto_sleep_cd w_w.mrfat.config matches 2.. run schedule function mr_fat:utilities/auto_sleep/countdown 1s