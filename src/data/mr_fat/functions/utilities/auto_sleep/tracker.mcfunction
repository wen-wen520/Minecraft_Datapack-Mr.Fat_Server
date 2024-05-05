execute store result score daytime w_w.daytime run time query daytime
execute if score daytime w_w.daytime matches 12541..23455 run function mr_fat:utilities/auto_sleep/execute
schedule function mr_fat:utilities/auto_sleep/tracker 1s