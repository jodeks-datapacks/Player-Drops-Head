$dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": "Head Drop Area Config",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "player_drops_head.config.area_description",\
        "fallback": "Specify a certain area in which head drops are allowed"\
      }\
    }\
  ],\
  "inputs": [\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_enabled",\
      "initial": $(enabled),\
      "label": {\
        "translate": "player_drops_head.config.area_enabled",\
        "fallback": "Area Enabled"\
      },\
    },\
    {\
      "type": "minecraft:text",\
      "key": "dialog_x",\
      "initial": "$(x)",\
      "label": {\
        "translate": "player_drops_head.config.area_x",\
        "fallback": "X coordinate"\
      },\
    },\
    {\
      "type": "minecraft:text",\
      "key": "dialog_y",\
      "initial": "$(y)",\
      "label": {\
        "translate": "player_drops_head.config.area_y",\
        "fallback": "Y coordinate"\
      }\
    },\
    {\
      "type": "minecraft:text",\
      "key": "dialog_z",\
      "initial": "$(z)",\
      "label": {\
        "translate": "player_drops_head.config.area_z",\
        "fallback": "Z coordinate"\
      }\
    },\
    {\
      "type": "minecraft:text",\
      "key": "dialog_radius",\
      "initial": "$(radius)",\
      "label": {\
        "translate": "player_drops_head.config.area_radius",\
        "fallback": "Radius around specified coordinates"\
      },\
    }\
  ],\
  "actions": [\
    {\
        "label": {\
        "translate": "jodek.save",\
        "fallback": "Save"\
      },\
      "action": {\
        "type": "minecraft:dynamic/run_command",\
        "template": "function player_drops_head:config/area/save_area_config {dialog_enabled:$(dialog_enabled), dialog_x:$(dialog_x), dialog_y:$(dialog_y), dialog_z:$(dialog_z), dialog_radius:$(dialog_radius)}"\
      }\
    }\
  ]\
}