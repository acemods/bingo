execute store success score $success bingo.tmp run data modify storage bingo:tmp icon set from storage bingo:tmp slots[13]
execute if score $success bingo.tmp matches 0 run function bingo:item_detection/helper/goals/bingo/row/3/5