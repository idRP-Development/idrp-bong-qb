This basic Bong and Joint script is based on my Bong Pack available on Tebex:

https://idart.tebex.io/category/fivem-resources

Images in Assets folder of Prop Pack

Add to qbcore/shared/items.lua

--idrp Bongs
['idrp_red_bong']			= {['name'] = 'idrp_red_bong',			['label'] = 'Red Bong',				['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_red_bong.png',		['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Red Bong'},
['idrp_aqua_bong']			= {['name'] = 'idrp_aqua_bong',			['label'] = 'Aqua Bong',			['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_aqua_bong.png',		['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Aqua Bong'},
['idrp_blue_bong']			= {['name'] = 'idrp_blue_bong',			['label'] = 'Blue Bong',			['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_blue_bong.png',		['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Blue Bong'},
['idrp_green_bong']			= {['name'] = 'idrp_green_bong',		['label'] = 'Green Bong',			['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_green_bong.png',		['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Green Bong'},
['idrp_purple_bong']		= {['name'] = 'idrp_purple_bong',		['label'] = 'Purple Bong',			['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_purple_bong.png',		['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Purple Bong'},
['idrp_yellow_bong']		= {['name'] = 'idrp_yellow_bong',		['label'] = 'Yellow Bong',			['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_yellow_bong.png',		['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Yellow Bong'},
['idrp_orange_bong']		= {['name'] = 'idrp_orange_bong',		['label'] = 'Orange Bong',			['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_orange_bong.png',		['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Orange Bong'},
['idrp_uwu_bong']			= {['name'] = 'idrp_uwu_bong',			['label'] = 'uWu Bong',				['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_uwu_bong.png',		['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'uWu Bong'},
['idrp_flask_bong']			= {['name'] = 'idrp_flask_bong',		['label'] = 'Flask Bong',			['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_flask_bong.png',		['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Flask Bong'},
['idrp_skull_bong']			= {['name'] = 'idrp_skull_bong',		['label'] = 'Skull Bong',			['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_skull_bong.png',		['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Skull Bong'},
['idrp_retro_blubong']		= {['name'] = 'idrp_retro_blubong',		['label'] = 'Blue Retro Bong',		['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_retro_blubong.png',	['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Blue Retro Bong'},
['idrp_retro_pepebong']		= {['name'] = 'idrp_retro_pepebong',	['label'] = 'PePe Retro Bong',		['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_retro_pepebong.png',	['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'PePe Retro Bong'},
['idrp_retro_fishbong']		= {['name'] = 'idrp_retro_fishbong',	['label'] = 'Retro Fish Bong',		['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_retro_fishbong.png',	['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Retro Fish Bong'},
['idrp_retro_pschobong']	= {['name'] = 'idrp_retro_pschobong',	['label'] = 'Psychedelic Bong',		['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_retro_pschobong.png',	['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Psychedelic Fish Bong'},
['idrp_grnfeather_bong']	= {['name'] = 'idrp_grnfeather_bong',	['label'] = 'Green Feather Bong',	['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_grnfeather_bong.png',	['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Green Feather Bong'},
['idrp_golfeather_bong']	= {['name'] = 'idrp_golfeather_bong',	['label'] = 'Gold Feather Bong',	['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_golfeather_bong.png',	['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Gold Feather Bong'},
['idrp_blkfeather_bong']	= {['name'] = 'idrp_blkfeather_bong',	['label'] = 'Black Feather Bong',	['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_blkfeather_bong.png',	['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Black Feather Bong'},
['idrp_redfeather_bong']	= {['name'] = 'idrp_redfeather_bong',	['label'] = 'Red Feather Bong',		['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_redfeather_bong.png',	['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Red Feather Bong'},
['idrp_mega_joint']			= {['name'] = 'idrp_mega_joint',		['label'] = 'idrp_mega_joint',		['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_mega_joint.png',		['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'idrp_mega_joint'},

['idrp_bong_lighter']	    = {['name'] = 'idrp_bong_lighter',		['lable'] = 'Bong Lighter',		['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_bong_lighter.png',		['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Bong Lighter'},
['idrp_bong_unlitlighter']	= {['name'] = 'idrp_bong_unlitlighter',	['lable'] = 'Bong Lighter',		['weight'] = 500,	['type'] = 'item',	['image'] = 'idrp_bong_unlitlighter.png',	['unique'] = true,	['useable'] = true,	['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Bong lighter'},


Using interact-sound for sound fx

https://github.com/plunkettscott/interact-sound

Sound files in Assets Folder

If using your own props edit config.lua with prop details.

Edit Config.lua to your servers needs.

Cheers ZenKat