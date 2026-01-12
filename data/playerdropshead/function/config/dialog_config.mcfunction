scoreboard players set @a playerdropshead.config 0

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
      "label": "Give own head",\
      "initial": $(give_own_head),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_give_head",\
      "label": "Give any head",\
      "initial": $(give_head),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "dialog_head_drops",\
      "label": "Head drops",\
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
    "label": "Save",\
    "action": {\
      type:"dynamic/run_command",\
      template:"function playerdropshead:config/save_config {dialog_give_own_head:$(dialog_give_own_head), dialog_give_head:$(dialog_give_head), dialog_head_drops:$(dialog_head_drops)}"\
    }\
  },\
  actions:[\
    {\
      "label": "Save",\
      "action": {\
        type:"dynamic/run_command",\
        template:"function playerdropshead:config/save_config {dialog_give_own_head:$(dialog_give_own_head), dialog_give_head:$(dialog_give_head), dialog_head_drops:$(dialog_head_drops)}"\
      }\
    }\
  ]\
}