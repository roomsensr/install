## Installation

 ### Integrations: 
 - Pyscript: Python Scripting for Home Assistant [https://github.com/custom-components/pyscript]
 ### Cards
 - ApexCharts Card by @RomRider [https://github.com/RomRider/apexcharts-card]
 - Button Card by @RomRider [https://github.com/custom-cards/button-card]  
 - card-mod [https://github.com/thomasloven/lovelace-card-mod] 
 - Lovelace Mini Graph Card [https://github.com/kalkih/mini-graph-card]
 - numberbox-card [https://github.com/htmltiger/numberbox-card]
 - slider-entity-row [https://github.com/thomasloven/lovelace-slider-entity-row]

## After install make sure you have configured: 
````
homeassistant:
      packages: !include_dir_named packages
#config for pyscript
pyscript:
  allow_all_imports: true
  hass_is_global: true
#config for lovelace dash
lovelace:
  mode: storage
  dashboards:
    lovelace-roomsense:
      mode: yaml
      title: RoomSense IQ
      icon: mdi:script
      show_in_sidebar: true
      filename: dashboards.yaml
````

## In Dashboards add resources below if you are using script with cards
>  NOTE: This area is only available when the active user's profile has "advanced mode" enabled.

| URL  | type|
|---------------------------------------|-----------------|
|/local/cards/apexcharts-card-rs.js     |JavaScript Module|
|/local/cards/button-card.js            |JavaScript Module|
|/local/cards/card-mod.js               |JavaScript Module|
|/local/cards/mini-graph-card-bundle.js |JavaScript Module|
|/local/cards/numberbox-card.js         |JavaScript Module|
|/local/cards/slider-entity-row.js      |JavaScript Module|

## script to get files without cards folder:
> make sure you are in config directory

      curl -sL  https://raw.githubusercontent.com/roomsensr/install/main/get.sh | bash -s

## script to get all files:
> make sure you are in config directory

      curl -sL  https://raw.githubusercontent.com/roomsensr/install/main/get-all.sh | bash -s
