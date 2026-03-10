$dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": "Player Config",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": "Input players you want to not drop a head. The player has to be online.",\
      "width": 200\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": "Current players that don't drop a head: "\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": '$(players_no_head)'\
    }\
  ],\
  "inputs": [\
    {\
      "type": "minecraft:text",\
      "key": "dialog_player_name",\
      "label": "Player Name"\
    }\
  ],\
  "exit_action": {\
    "label": "Close"\
  },\
  "actions": [\
    {\
      "label": "Add",\
      "action": {\
        "type": "minecraft:dynamic/run_command",\
        "template": "function playerdropshead:config/player/add {dialog_player_name:$(dialog_player_name)}"\
      }\
    },\
    {\
      "label": "Remove",\
      "action": {\
        "type": "minecraft:dynamic/run_command",\
        "template": "function playerdropshead:config/player/remove {dialog_player_name:$(dialog_player_name)}"\
      }\
    }\
  ]\
}