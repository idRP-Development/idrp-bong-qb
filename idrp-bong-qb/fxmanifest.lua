fx_version 'cerulean'

game 'gta5'

version '1.0'

author 'idArt Zenkat'

description 'Bong Script QBcore'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_script 'client/*.lua'

server_script 'server/*.lua'

lua54 'yes'

escrow_ignore {
	'QBCorereadme.txt',
	'config.lua',
	'client/*.lua',
	'server/*.lua'
}

