fx_version "cerulean"
game "gta5"

author "Qazar"
description "RadarGun"
version "1.2"

ui_page "html/index.html"

files {
	"html/index.html",
	"html/js/jquery-3.6.0.min.js",
	"html/img/radargun.png",
	"html/img/scope.png",
	"html/js/listener.js",
	"html/style.css",
}

client_scripts {
	"config.lua",
	"client.lua",
}