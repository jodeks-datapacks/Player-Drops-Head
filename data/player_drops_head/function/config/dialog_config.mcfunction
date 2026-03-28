scoreboard players set @a player_drops_head.config 0

$dialog show @s {\
  type:"minecraft:multi_action",\
  title:"Player Drops Head Config",\
  "body": [\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:player_head"\
      }\
    }\
  ],\
  inputs:[\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_give_own_head",\
      "label": {\
        "translate": "player_drops_head.config.give_own_head",\
        "fallback": "Give own head"\
      },\
      "initial": $(give_own_head),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_give_head",\
      "label": {\
        "translate": "player_drops_head.config.give_head",\
        "fallback": "Give any head"\
      },\
      "initial": $(give_head),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "dialog_head_drops",\
      "label": {\
        "translate": "player_drops_head.config.head_drops",\
        "fallback": "Head drops"\
      },\
      "options": [\
        {\
          "id": "0",\
          "display": "When killed by player",\
          "initial": $(head_drops_killed)\
        },\
        {\
          "id": "1",\
          "display": "When killed",\
          "initial": $(head_drops)\
        }\
      ]\
    },\
  ],\
  columns:1,\
    "exit_action": {\
      "label": {\
        "translate": "jodek.save",\
        "fallback": "Save"\
      },\
    "action": {\
      type:"dynamic/run_command",\
      template:"function player_drops_head:config/save_config {dialog_give_own_head:$(dialog_give_own_head), dialog_give_head:$(dialog_give_head), dialog_head_drops:$(dialog_head_drops)}"\
    }\
  },\
  actions:[\
    {\
      "label": {\
        "translate": "player_drops_head.config.player_config",\
        "fallback": "Player config"\
      },\
      "action": {\
        type:"run_command",\
        command:"function player_drops_head:config/player/dialog_player_config with storage player_drops_head:root data"\
      }\
    },\
    {\
      "label": {\
        "translate": "player_drops_head.config.area_config",\
        "fallback": "Head Drop Area Config"\
      },\
      "action": {\
        type:"run_command",\
        command:"function player_drops_head:config/area/dialog_area_config with storage player_drops_head:root data.area"\
      }\
    }\
  ]\
}