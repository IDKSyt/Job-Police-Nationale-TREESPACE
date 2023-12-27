fx_version 'adamant'

game 'gta5'

lua54 'yes'

author 'TreeSpace'
description 'Police Nationale'

client_scripts {
    "src/RMenu.lua",
    "src/menu/RageUI.lua",
    "src/menu/Menu.lua",
    "src/menu/MenuController.lua",

    "src/components/*.lua",

    "src/menu/elements/*.lua",

    "src/menu/items/*.lua",

    "src/menu/panels/*.lua",

    "src/menu/panels/*.lua",
    "src/menu/windows/*.lua",

}

client_scripts {
    '@es_extended/locale.lua',
    'locales/fr.lua',
    'client/*.lua',
    'config.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    '@es_extended/locale.lua',
    'locales/fr.lua',
    'server/server.lua',
    'config.lua'
}

dependencies {
    'es_extended'
}
fx_version 'cerulean'

files {
    'mp_m_freemode_01_eup_m_fosecours.meta'
}

data_file 'SHOP_PED_APPAREL_META_FILE' 'mp_m_freemode_01_eup_m_fosecours.meta'

dependency '/assetpacks'