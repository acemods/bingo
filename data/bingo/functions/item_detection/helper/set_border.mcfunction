#> bingo:item_detection/helper/set_border
#
# This function sets the b

execute store result score $i bingo.tmp run data get storage bingo:card slots[{selected: true}].id
data modify storage bingo:tmp previousSlots set from storage bingo:card teams[-1].slots
data remove storage bingo:tmp slots

function bingo:item_detection/helper/find_slot

execute store success score $success bingo.tmp run data modify storage bingo:tmp slots[-1] set from storage bingo:card teams[-1].completedBorder