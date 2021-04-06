#> bingo:card_display/display_card
#
# Displays the bingo card for @s
#
# @within bingo:card_display/display_card_schedule
# @context entity Player for displaying the card
# @reads score @s bingo.card_pos

#>
# The y coordinate of the current player
#
# @private
#declare score_holder $card_display/display_card.y

function bingo:util/find_player_team
execute in bingo:lobby run function neun_einser.timer:store_current_time

scoreboard players enable @s bingo.card_pos

# text
execute store result score $card_display/display_card.y bingo.tmp run data get entity @s Pos[1]
data modify storage bingo:tmp y set value '{"score": {"name": "$card_display/display_card.y", "objective": "bingo.tmp"}}'
execute if entity @s[tag=bingo.emerald] run data modify storage bingo:tmp y set value '{"score": {"name": "$card_display/display_card.y", "objective": "bingo.tmp"}, "color": "green"}'

data modify storage bingo:tmp ySpaces set value [""]

#Characters are \uF826. Has to be literal character in this case. Space width 6.
execute if score $card_display/display_card.y bingo.tmp matches 0..99 run data modify storage bingo:tmp ySpaces append value ""
execute if score $card_display/display_card.y bingo.tmp matches 0..9 run data modify storage bingo:tmp ySpaces append value ""
execute if score $card_display/display_card.y bingo.tmp matches -9..-1 run data modify storage bingo:tmp ySpaces append value ""

data modify storage bingo:tmp timeSpaces set value []

#Characters are \uF826. Has to be literal character in this case. Space width 6.
execute if score $hours 91.timer.time matches ..99 run data modify storage bingo:tmp timeSpaces append value ""
execute if score $hours 91.timer.time matches ..9 run data modify storage bingo:tmp timeSpaces append value ""
#Character is \uF828. Has to be literal character in this case. Space width 8.
execute if score $hours 91.timer.time matches 0 run data modify storage bingo:tmp timeSpaces append value ""
#Character is \uF826. Has to be literal character in this case. Space width 6.
execute if score $hours 91.timer.time matches 0 if score $minutes 91.timer.time matches ..9 run data modify storage bingo:tmp timeSpaces append value ""
#Character is \uF828. Has to be literal character in this case. Space width 8.
execute if score $hours 91.timer.time matches 0 if score $minutes 91.timer.time matches 0 run data modify storage bingo:tmp timeSpaces append value ""
#Character is \uF826. Has to be literal character in this case. Space width 6.
execute if score $hours 91.timer.time matches 0 if score $minutes 91.timer.time matches 0 if score $seconds 91.timer.time matches ..9 run data modify storage bingo:tmp timeSpaces append value ""

execute if score $seed bingo.state matches -2147483648.. run function bingo:card_display/display_if_seed_is_set

title @s actionbar [{"translate":"space.46"},{"storage":"bingo:tmp","nbt":"timeSpaces","interpret":true},{"storage":"neun_einser.timer:display","nbt":"hh:mm:ss","interpret":true,"font":"bingo:line1_shadow","color":"black"},{"translate":"space.-47"},{"storage":"bingo:tmp","nbt":"timeSpaces","interpret":true},{"storage":"neun_einser.timer:display","nbt":"hh:mm:ss","interpret":true,"font":"bingo:line1"},{"translate":"space.-29"},{"storage":"bingo:tmp","nbt":"ySpaces","interpret":true},{"text":"Y: ","font":"bingo:line2_shadow","color":"black","extra":[{"score":{"objective":"bingo.tmp","name":"$card_display/display_card.y"}}]},{"translate":"space.-31"},{"storage":"bingo:tmp","nbt":"ySpaces","interpret":true},{"text":"Y: ","font":"bingo:line2","extra":[{"storage": "bingo:tmp", "nbt": "y", "interpret": true}]},{"translate":"space.-91"},{"storage": "bingo:tmp", "nbt": "card", "interpret": true}]