execute store success score $success bingo.tmp if data storage bingo:card slots[{item:{id:"bingo:tnt"}}] run data modify storage bingo:card slots[{item:{id:"bingo:tnt"}}].selected set value true
execute if score $success bingo.tmp matches 1 run function bingo:item_detection/helper/check_and_announce