Config = {}

Config.Items = true

Config.NeededItems = {						-- the item you need to be able to light bong
	{itemName = "idrp_bong_unlitlighter"},
}

Config.Ox_lib = {
	small_duration		= 5000,
	large_duration		= 7000,
	position			= 'center-right',
	notify_position		= 'center-right',
	take_hit			= '[E] to take a Hit [G] to stash',
	stashed				= 'Stashed',
	holding				= 'You already have it',
	not_holding			= 'You are not holding anything',
	no_choof			= 'You can not choof here',
	dead				= 'You are dead no choof for you',
	canCancel			= false,
	need_lighter		= 'You need a lighter to smoke up',
}

Config.controls = {
	use_bong 		= 51,		-- Take a hit (51)"E"
	stash_bong 		= 58,		-- Stash your bong (58)"G"
	activate_time 	= 250,		-- Time in (ms) to hold the button (250) by default.
	cloud_size 		= 0.5,		-- The size of the smoke particles. (0.5) by default.
	bong_cd 		= 4000,		-- The time in (ms) to wait before next hit. (4000) by default.
	cloud_time		= 4500		-- The amount of time in (ms) the smoke from the bong will linger. (3200) by default.
}

Config.Lighter_Models = {			---my props have the same name as the model, but if you have other props, you can add them here.
	{
		prop = "idrp_bong_lighter",
		itemName = 'idrp_bong_lighter',
		bone = 58866,
		coords = vector3(0.11, -0.02, -120.0),
		rcoords = vector3(0.0, 0.0, 0.0)
	}, {
		prop = "idrp_bong_unlitlighter",
		itemName = 'idrp_bong_unlitlighter',
		bone = 58866,
		coords = vector3(0.11, -0.02, -120.0),
		rcoords = vector3(0.0, 0.0, 0.0)
	}
}

Config.Bong_Models = {			---my props have the same name as the model, but if you have other props, you can add them here.
	{
		prop = "idrp_aqua_bong",
		itemName = 'idrp_aqua_bong',
		bone = 18905,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_blue_bong",
		itemName = 'idrp_blue_bong',
		bone = 18905,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_flask_bong",
		itemName = 'idrp_flask_bong',
		bone = 18905,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_green_bong",
		itemName = 'idrp_green_bong',
		bone = 18905,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_orange_bong",
		itemName = 'idrp_orange_bong',
		bone = 18905,	x = 0.10,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_purple_bong",
		itemName = 'idrp_purple_bong',
		bone = 18905,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_red_bong",
		itemName = 'idrp_red_bong',
		bone = 18905,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_skull_bong",
		itemName = 'idrp_skull_bong',
		bone = 18905,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_uwu_bong",
		itemName = 'idrp_uwu_bong',
		bone = 18905,	x = 0.10,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_yellow_bong",
		itemName = 'idrp_yellow_bong',
		bone = 18905,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_redfeather_bong",
		itemName = 'idrp_redfeather_bong',
		bone = 18905,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_blkfeather_bong",
		itemName = 'idrp_blkfeather_bong',
		bone = 18905,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_golfeather_bong",
		itemName = 'idrp_golfeather_bong',
		bone = 18905,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_grnfeather_bong",
		itemName = 'idrp_grnfeather_bong',
		bone = 18905,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_retro_fishbong",
		itemName = 'idrp_retro_fishbong',
		bone = 18905,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_retro_pepebong",
		itemName = 'idrp_retro_pepebong',
		bone = 18905,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_retro_blubong",
		itemName = 'idrp_retro_blubong',
		bone = 18905,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_retro_pschobong",
		itemName = 'idrp_retro_pschobong',
		bone = 18905,
		coords = vector3(0.10, -0.25, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}, {
		prop = "idrp_mega_joint",
		itemName = 'idrp_mega_joint',
		rbone = 58866,
		bone = 18905,
		coords = vector3( 0.10,	-0.26, 0.0),
		rcoords = vector3(95.0, 190.0, 180.0)
	}
}
