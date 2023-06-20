## Installation

## How to install
1. Run one of the two scripts below:
   - If you want to get all files, use the first script.
   - If you don't need the cards folder (cards installed from HACS), use the second script.

    > **Make sure you are in the config directory before running these scripts.**

    Get all files:

    ```bash
    curl -sL  https://raw.githubusercontent.com/roomsensr/install/main/get-all.sh | bash -s
    ```

    Get files without cards folder:

    ```bash
    curl -sL  https://raw.githubusercontent.com/roomsensr/install/main/get.sh | bash -s
    ```

2. Restart Home Assistant.
3. Add the necessary configuration to your `configuration.yaml` file (details provided below).
4. If you're not using cards installed using HACS, add the specified resources to Lovelace (details provided below).
5. Restart HA again.
   

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

## In Dashboards add resources below if you are not using cards installed using HACS
>  NOTE: This area is only available when the active user's profile has "advanced mode" enabled.

>  NOTE: Make sure you don't add cards you have installed using HACS as it can cause issues

| URL  | type|
|---------------------------------------|-----------------|
|/local/cards/apexcharts-card-rs.js     |JavaScript Module|
|/local/cards/button-card.js            |JavaScript Module|
|/local/cards/card-mod.js               |JavaScript Module|
|/local/cards/mini-graph-card-bundle.js |JavaScript Module|
|/local/cards/numberbox-card.js         |JavaScript Module|
|/local/cards/slider-entity-row.js      |JavaScript Module|



 ## External components/cards: 
 ### Integrations: 
 - Pyscript: Python Scripting for Home Assistant [https://github.com/custom-components/pyscript]
 ### Cards
 - ApexCharts Card by @RomRider [https://github.com/RomRider/apexcharts-card]
 - Button Card by @RomRider [https://github.com/custom-cards/button-card]  
 - card-mod [https://github.com/thomasloven/lovelace-card-mod] 
 - Lovelace Mini Graph Card [https://github.com/kalkih/mini-graph-card]
 - numberbox-card [https://github.com/htmltiger/numberbox-card]
 - slider-entity-row [https://github.com/thomasloven/lovelace-slider-entity-row
