scoreboard players set @a give_head 0

execute if score &give_head playerdropshead.config matches 1 run dialog show @s {\
  type:"minecraft:notice",\
  title:"Give any player head",\
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
      "type": "minecraft:text",\
      "key": "dialog_give_any_head",\
      "label": "Input player name"\
    }\
  ],\
  action:\
  {\
    "label": "Get Head",\
    "action": {\
      type:"dynamic/run_command",\
      template:"function playerdropshead:app/give_any_head {dialog_give_any_head:$(dialog_give_any_head)}"\
    }\
  }\
}