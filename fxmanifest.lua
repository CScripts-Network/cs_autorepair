lua54 'yes'
game 'gta5'
fx_version 'adamant'
author 'Flyx, CSN'
description 'Local Autorepair by Flyx CScripts Network'

client_scripts {
    'client/client.lua',
    'config.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/server.lua',
    'config.lua'
}

dependencies {
    'es_extended',
    'ox_lib'
}

shared_scripts {
    '@ox_lib/init.lua',
  }
