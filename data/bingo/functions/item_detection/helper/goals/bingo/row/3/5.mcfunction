execute store success score $success bingo_tmp run data modify storage bingo:tmp icon set from storage bingo:tmp slots[14]
execute if score $success bingo_tmp matches 0 run scoreboard players set $row bingo_tmp 3