fx_version 'cerulean'
game 'gta5'
lua54 'yes'
files {
    'html/ui.html',
    'html/sounds/stomach_growl.ogg'
}

ui_page 'html/ui.html'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client/hunger_thirst_alert.lua'
}

server_scripts {
    'server.lua'
}
