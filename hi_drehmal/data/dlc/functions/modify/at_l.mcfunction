execute as @p[tag=selector] run function players:avpod/clearchat
tellraw @p[tag=selector] ["",{"text":"[","color":"white"},{"text":"ａｖＳＹＳ","color":"dark_aqua"},"]","／／ ＳＥＬＥＣＴ ＤＥＳＩＲＥＤ ＵＰＧＲＡＤＥ ／／"]
tellraw @p[tag=selector]  ["",{"text":"＋ＡＴ ＦＬＡＴ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=valid,tag=!at] unless predicate players:holding/at_l run function dlc:modify/leggings/at_b"},"hoverEvent":{"action":"show_text","contents":[{"text":"+0.5 Attack Damage","color":"blue"}]}},"\n",{"text":"＋ＡＴ ％","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=valid,tag=!at] unless predicate players:holding/at_l run function dlc:modify/leggings/at_p"},"hoverEvent":{"action":"show_text","contents":[{"text":"+4% Attack Damage","color":"blue"}]}}]
