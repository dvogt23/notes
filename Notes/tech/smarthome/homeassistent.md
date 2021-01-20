# Home-Assistent

## Shutter control

### MQTT Slider

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

### Automation

Just an example from: [community/florian](https://community.home-assistant.io/t/shelly-2-as-roller-shutter-with-percentage/85817/22)

```yml
- alias: 'Close most slats when the sun gets dim'
  id: 'cmswtsgd'
  trigger:
    platform: sun
    event: sunset
    offset: '-00:45:00'
  action:
    service: cover.set_cover_position
    entity_id: cover.bedroom_cover
    data:
      position: 14
```
