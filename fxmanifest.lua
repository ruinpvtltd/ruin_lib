fx_version 'adamant'
game 'gta5'


description 'Multi-Framework Library with in build features, By RUIN PVT LTD.'

client_scripts {
    'config/config.lua',
    'client/main.lua'
}

server_scripts {
    'config/config.lua',
    'server/main.lua'
}

export {
    'Draw3DMarker',
    'Teleport',
    'Draw3DText',
}
server_exports {
    'GetUser',
    'GetPlayerData',
    'AddItem',
    'RemoveItem',
    'AddMoney',
    'RemoveMoney',
    'GetJob',
    'GetGroup',
    'GetMoney',
    'RemoveCash',
'GetAccountMoney',
'AddCash',
}