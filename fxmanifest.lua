fx_version 'cerulean'
game 'gta5'

author 'Haxalott'
description 'Rockstar Editor script'
version '1.0.1'

lua54 'yes'

shared_scripts { 
    '@ox_lib/init.lua',
    'config.lua'
}

client_script { 
    'client.lua'
}

dependency { 
    'ox_lib' 
}