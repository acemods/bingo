#> bingo:game/start/init_teams/red
#
# Initializes the red team
#
# @within function bingo:game/start/init_teams

data modify block ~ ~ ~ Text1 set value '[{"storage": "tmp.bingo:game/start", "nbt": "backgroundTemplate[0]", "interpret": true, "color": "red"}, {"translate": "space.-21", "font": "space:default"}]'
data modify storage bingo:card teams[{id: "bingo:red"}].background set from block ~ ~ ~ Text1
data modify block ~ ~ ~ Text1 set value '[{"storage": "tmp.bingo:game/start", "nbt": "backgroundTemplate[0]", "interpret": true, "color": "#8b8b8b"}, {"translate": "space.-21", "font": "space:default"}]'
data modify storage tmp.bingo:game/start defaultBackground append from block ~ ~ ~ Text1

data remove storage tmp.bingo:game/start backgroundTemplate[0]