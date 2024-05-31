# timer
execute store result score daytime w_w.daytime run time query daytime
# test
execute if score auto_sleep w_w.mrfat.config matches 1 if score daytime w_w.daytime matches 12141..12341 unless score auto_sleep_inquiry w_w.mrfat.config matches 1 run function mr_fat:utilities/auto_sleep/inquiry
# repeat
schedule function mr_fat:utilities/auto_sleep/tracker 1s