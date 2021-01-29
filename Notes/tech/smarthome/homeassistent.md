# Home-Assistent

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
