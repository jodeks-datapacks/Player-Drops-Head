$dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": "Player Config",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "player_drops_head.config.player_description",\
        "fallback": "Input players you want to not drop a head. The player has to be online"\
      }\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "player_drops_head.config.player_no_head",\
        "fallback": "Current players that don't drop a head: "\
      }\
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
      "label": {\
        "translate": "player_drops_head.config.player_name",\
        "fallback": "Player Name"\
      },\
    }\
  ],\
  "exit_action": {\
      "label": {\
        "translate": "jodek.exit",\
        "fallback": "Exit"\
      },\
  },\
  "actions": [\
    {\
      "label": {\
        "translate": "jodek.add",\
        "fallback": "Add"\
      },\
      "action": {\
        "type": "minecraft:dynamic/run_command",\
        "template": "function player_drops_head:config/player/add {dialog_player_name:$(dialog_player_name)}"\
      }\
    },\
    {\
      "label": {\
        "translate": "jodek.remove",\
        "fallback": "Remove"\
      },\
      "action": {\
        "type": "minecraft:dynamic/run_command",\
        "template": "function player_drops_head:config/player/remove {dialog_player_name:$(dialog_player_name)}"\
      }\
    }\
  ]\
}