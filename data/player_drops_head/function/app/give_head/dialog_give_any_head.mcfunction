scoreboard players set @a give_head 0

execute if score &give_head player_drops_head.config matches 1 run dialog show @s {\
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
      "label": {\
        "translate": "player_drops_head.get_head.input",\
        "fallback": "Input player name"\
      }\
    }\
  ],\
  action:\
  {\
      "label": {\
        "translate": "player_drops_head.get_head",\
        "fallback": "Get Head"\
      },\
    "action": {\
      type:"dynamic/run_command",\
      template:"function player_drops_head:app/give_head/give_any_head {dialog_give_any_head:$(dialog_give_any_head)}"\
    }\
  }\
}