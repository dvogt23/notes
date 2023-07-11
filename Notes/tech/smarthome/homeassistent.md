---
id: "tech/smarthome/homeassistent.md"
aliases:
  - "Cool stuff"
tags: []
---

[#](#) Home-Assistent

## Cool stuff

 - awesome [ha](https://www.awesome-ha.com/)
 - Community store [hacs](https://hacs.xyz/)
 - Dashboard [mushroom](https://github.com/piitaya/lovelace-mushroom)

## Database correction

Sometimes getting wrong data from my smart meter, that one have to fix in database with the SQlite Web add-on on my home-assistant instance, with following commands:

```sql
SELECT *
FROM "statistics" WHERE CAST(mean AS DECIMAL(12,6)) LIKE '3976%'

UPDATE "statistics" 
SET mean = OtherTable.Col1, 
    Col2 = OtherTable.Col2 
FROM (
    SELECT *
	FROM "statistics" WHERE CAST(mean AS DECIMAL(12,6)) 
	LIKE '3976%')
```
```

## Audio output on audio-jack

Install following plugin: [MPD](https://github.com/Poeschl/Hassio-Addons/tree/main/mpd)

## Pollenflug

Sensoren anlegen:

```yml
# Pollenflug Informationen
- platform: rest
  scan_interval: 3600
  name: "DWD Pollen"
  resource: https://opendata.dwd.de/climate_environment/health/alerts/s31fg.json
  json_attributes_path: "$..content[?(@.partregion_id==42)].Pollen"
  json_attributes:
    - Erle
    - Beifuss
    - Ambrosia
    - Birke
    - Esche
    - Hasel
    - Graeser
    - Roggen
  value_template: "{{ value_json.last_update }}"
- platform: template
  sensors:
    dwd_pollen_erle:
      icon_template: "mdi:tree-outline"
      friendly_name: "Erle"
      value_template: >-
        {% set dwd_state = state_attr('sensor.dwd_pollen', 'Erle')['today'] %}
        {% if dwd_state == "3" %}6{% elif dwd_state == "2-3"%}5{% elif dwd_state == "2"%}4{% elif dwd_state == "1-2"%}3{% elif dwd_state == "1"%}2{% elif dwd_state == "0-1"%}1{% else %}0{% endif %}
      attribute_templates:
        today: >-
          {% set dwd_state = state_attr('sensor.dwd_pollen', 'Erle')['today'] %}
          {% if dwd_state == "3" %}6{% elif dwd_state == "2-3"%}5{% elif dwd_state == "2"%}4{% elif dwd_state == "1-2"%}3{% elif dwd_state == "1"%}2{% elif dwd_state == "0-1"%}1{% else %}0{% endif %}
        tomorrow: >-
          {% set dwd_state = state_attr('sensor.dwd_pollen', 'Erle')['tomorrow'] %}
          {% if dwd_state == "3" %}6{% elif dwd_state == "2-3"%}5{% elif dwd_state == "2"%}4{% elif dwd_state == "1-2"%}3{% elif dwd_state == "1"%}2{% elif dwd_state == "0-1"%}1{% else %}0{% endif %}
```

Source: [youtube/smarthomeyourself](https://youtu.be/yHI9Dt4xD4g)

## Shutter control

### MQTT Slider

**Works!** Tasmota wiki for [covers]():

```yml
cover:
  - platform: mqtt
    name: "Wohnzimmer Zentrale"
    availability_topic: "Smarthome/jalosien/wohnzimmer/tele/LWT"
    payload_available: "Online"
    payload_not_available: "Offline"
    position_topic: "Smarthome/jalosien/wohnzimmer/stat/SHUTTER1"
    position_open: 100
    position_closed: 0
    set_position_topic: "Smarthome/jalosien/wohnzimmer/cmnd/ShutterPosition1"
    command_topic: "Smarthome/jalosien/wohnzimmer/cmnd/BACKLOG"
    payload_open: "ShutterOpen1"
    payload_close: "ShutterClose1"
    payload_stop: "ShutterStop1"
    retain: false
    optimistic: false
    qos: 1
```

Definition from github
[snakuzzo](https://github.com/arendst/Tasmota/issues/6614#issuecomment-541785867):

```yml
- platform: mqtt
  name: "Wohnzimmer Zentrale"
  availability_topic: "Smarthome/jalosien/wohnzimmer/tele/LWT"
  state_topic: "stat/sonoff-cletto/RESULT"
  command_topic: "Smarthome/jalosien/wohnzimmer/cmnd"
  value_template: '{{ value | int }}'
  qos: 1
  retain: false
  payload_open: "ShutterOpen1"
  payload_close: "ShutterClose1"
  payload_stop: "ShutterStop1"
  state_open: "ON"
  state_closed: "OFF"
  payload_available: "Online"
  payload_not_available: "Offline"
  optimistic: true
  set_position_topic: "Smarthome/jalosien/wohnzimmer/cmnd/shutterposition"
  position_topic: "Smarthome/jalosien/wohnzimmer/stat/SHUTTER1"
```

A definition for slider from [community/florian](https://community.home-assistant.io/t/shelly-2-as-roller-shutter-with-percentage/85817/2)
```yml
- platform: mqtt
  name: bedroom_cover
  command_topic: "shellies/shellyswitch-xxxxxx/roller/0/command"
  position_topic: "shellies/shellyswitch-xxxxxx/roller/0/pos"
  set_position_topic: "shellies/shellyswitch-xxxxxx/roller/0/command/pos"
  availability_topic: "shellies/shellyswitch-xxxxxx/online"
  payload_available: "true"
  payload_not_available: "false"
  qos: 1
  retain: false
  payload_open: "open"
  payload_close: "close"
  payload_stop: "stop"
  position_open: 100
  position_closed: 0
  optimistic: false
```

another one

```yml
  - platform: mqtt
    name: living_room_shutter
    availability_topic: "Smarthome/jalosien/wohnzimmer/tele/LWT"
    state_topic: "tele/persiana_dormitorio/RESULT"
    command_topic: "Smarthome/jalosien/wohnzimmer/cmnd"
    set_position_topic: "Smarthome/jalosien/wohnzimmer/cmnd/shutterposition"
    value_template: "{{ value_json['SHUTTER-1'] }}"
    qos: 1
    retain: true
    payload_open: "SHUTTEROPEN"
    payload_close: "SHUTTERCLOSE"
    payload_stop: "SHUTTERSTOP"
    state_open: "ON"
    state_closed: "OFF"
    payload_available: "Online"
    payload_not_available: "Offline"
    optimistic: true
```

### Automation

```yml
- id: '1611493304194'
  alias: Jalosien runter bei Sonnenuntergang
  trigger:
  - platform: sun
    event: sunset
    offset: +00:30:00
  action:
  - service: cover.set_cover_position
    data:
      position: 0
    entity_id: cover.wohnzimmer_zentrale
  mode: single
- id: '1611863540767'
  alias: Jalosien hoch bei Sonnenaufgang
  trigger:
  - platform: sun
    event: sunrise
    offset: -00:30:00
  action:
  - service: cover.set_cover_position
    data:
      position: 100
    entity_id: cover.wohnzimmer_zentrale
  mode: single
```
