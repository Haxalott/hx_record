name 'fivem-typescript-boilerplate'
author 'Overextended'
version '0.0.0'
repository 'https://github.com/overextended/fivem-typescript-boilerplate.git'
fx_version 'cerulean'
game 'gta5'
node_version '22'

files {
	'locales/*.json',
	'static/config.json',
	'locales/en.json',
}

dependencies {
	'/server:12913',
	'/onesync',
	'ox_lib',
}

client_scripts {
	'dist/client.js',
}
