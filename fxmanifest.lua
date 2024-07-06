game 'gta5'

fx_version 'adamant'

version '1.0.0'

lua54 'yes'

author 'Goshawk1337'

decription 'Dashboard made by goshawk1337'

shared_scripts {
    '@ox_lib/init.lua',
    '@es_extended/imports.lua',
    'config.lua',
}

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/script.js'
}

client_scripts {
    'client/client.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/server.lua',
}