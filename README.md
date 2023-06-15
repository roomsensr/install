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
````
## script to get all files:(make sure you are in config directory)
      curl -sL  https://raw.githubusercontent.com/roomsensr/install/main/get.sh | bash -s
