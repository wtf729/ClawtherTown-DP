#shop
execute as @s[scores={shop=1}] run function scr:shop/show_shop

#buy
execute as @s[scores={shop=10}] run function scr:shop/cancel
execute as @s[scores={shop=11}] run function scr:shop/buy/operations/buy_1
execute as @s[scores={shop=12}] run function scr:shop/buy/operations/buy_5
execute as @s[scores={shop=13}] run function scr:shop/buy/operations/buy_10

execute as @s[scores={shop=100}] run function scr:shop/buy/pages/page_1
execute as @s[scores={shop=101}] run function scr:shop/buy/items/item_101
execute as @s[scores={shop=102}] run function scr:shop/buy/items/item_102
execute as @s[scores={shop=103}] run function scr:shop/buy/items/item_103
execute as @s[scores={shop=104}] run function scr:shop/buy/items/item_104
execute as @s[scores={shop=105}] run function scr:shop/buy/items/item_105
execute as @s[scores={shop=106}] run function scr:shop/buy/items/item_106

#execute as @s[scores={shop=200}] run function scr:shop/buy/pages/page_2
#execute as @s[scores={shop=300}] run function scr:shop/buy/pages/page_3

#sell
execute as @s[scores={shop=10100}] run function scr:shop/sell/pages/page_1
execute as @s[scores={shop=10101}] run function scr:shop/sell/items/item_101
execute as @s[scores={shop=10102}] run function scr:shop/sell/items/item_102
execute as @s[scores={shop=10103}] run function scr:shop/sell/items/item_103
execute as @s[scores={shop=10104}] run function scr:shop/sell/items/item_104
execute as @s[scores={shop=10105}] run function scr:shop/sell/items/item_105
execute as @s[scores={shop=10106}] run function scr:shop/sell/items/item_106
execute as @s[scores={shop=10107}] run function scr:shop/sell/items/item_107
execute as @s[scores={shop=10108}] run function scr:shop/sell/items/item_108
execute as @s[scores={shop=10109}] run function scr:shop/sell/items/item_109
execute as @s[scores={shop=10110}] run function scr:shop/sell/items/item_110


execute as @s[scores={shop=10200}] run function scr:shop/sell/pages/page_2
execute as @s[scores={shop=10201}] run function scr:shop/sell/items/item_201
execute as @s[scores={shop=10202}] run function scr:shop/sell/items/item_202
execute as @s[scores={shop=10203}] run function scr:shop/sell/items/item_203
execute as @s[scores={shop=10204}] run function scr:shop/sell/items/item_204
execute as @s[scores={shop=10205}] run function scr:shop/sell/items/item_205
execute as @s[scores={shop=10206}] run function scr:shop/sell/items/item_206


execute as @s[scores={shop=21}] run function scr:shop/sell/operations/sell_execute


#case
execute as @s[scores={shop=100011}] run function scr:shop/case/operations/case/buy_1
execute as @s[scores={shop=100012}] run function scr:shop/case/operations/case/buy_5
execute as @s[scores={shop=100013}] run function scr:shop/case/operations/case/buy_10
execute as @s[scores={shop=100014}] run function scr:shop/case/operations/case/buy_max

execute as @s[scores={shop=100016}] run function scr:shop/case/operations/key/buy_1
execute as @s[scores={shop=100017}] run function scr:shop/case/operations/key/buy_5
execute as @s[scores={shop=100018}] run function scr:shop/case/operations/key/buy_10
execute as @s[scores={shop=100019}] run function scr:shop/case/operations/key/buy_max

execute as @s[scores={shop=100021}] run function scr:shop/case/operations/open/case/open_1
execute as @s[scores={shop=100022}] run function scr:shop/case/operations/open/case/open_10
execute as @s[scores={shop=100023}] run function scr:shop/case/operations/open/case/open_max

execute as @s[scores={shop=100031}] run function scr:shop/case/operations/open/dream_wing/open_1
execute as @s[scores={shop=100032}] run function scr:shop/case/operations/open/dream_wing/open_10
execute as @s[scores={shop=100033}] run function scr:shop/case/operations/open/dream_wing/open_max


execute as @s[scores={shop=100099}] run function scr:shop/case/items/item_099
execute as @s[scores={shop=100100}] run function scr:shop/case/pages/page_1
execute as @s[scores={shop=100101}] run function scr:shop/case/items/item_101
execute as @s[scores={shop=100102}] run function scr:shop/case/items/item_102
execute as @s[scores={shop=100103}] run function scr:shop/case/items/item_103
execute as @s[scores={shop=100104}] run function scr:shop/case/items/item_104
execute as @s[scores={shop=100105}] run function scr:shop/case/items/item_105


#execute as @s[scores={shop=100200}] run function scr:shop/case/pages/page_2
#execute as @s[scores={shop=100300}] run function scr:shop/case/pages/page_3