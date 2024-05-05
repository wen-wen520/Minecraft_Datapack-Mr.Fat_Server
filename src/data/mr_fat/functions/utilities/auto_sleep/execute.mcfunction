execute store result score wen_wen520 w_w.daytime run time query daytime
execute if score wen_wen520 w_w.daytime matches 12541..23455 run schedule function mr_fat:utilities/auto_sleep/execute 1d replace
execute if score wen_wen520 w_w.daytime matches 12541..23455 run title @a actionbar "今夜文文将在梦中度过"
execute if score wen_wen520 w_w.daytime matches 12541..23455 run time set 23458