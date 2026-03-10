$dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": "Head Drop Area Config",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": "Specify a certain area in which head drops are allowed"\
    }\
  ],\
  "inputs": [\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_enabled",\
      "initial": $(enabled),\
      "label": "Area Enabled"\
    },\
    {\
      "type": "minecraft:text",\
      "key": "dialog_x",\
      "initial": "$(x)",\
      "label": "X coordinate"\
    },\
    {\
      "type": "minecraft:text",\
      "key": "dialog_y",\
      "initial": "$(y)",\
      "label": "Y coordinate"\
    },\
    {\
      "type": "minecraft:text",\
      "key": "dialog_z",\
      "initial": "$(z)",\
      "label": "Z coordinate"\
    },\
    {\
      "type": "minecraft:text",\
      "key": "dialog_radius",\
      "initial": "$(radius)",\
      "label": "Radius around specified coordinates"\
    }\
  ],\
  "actions": [\
    {\
      "label": "Save",\
      "action": {\
        "type": "minecraft:dynamic/run_command",\
        "template": "function playerdropshead:config/area/save_area_config {dialog_enabled:$(dialog_enabled), dialog_x:$(dialog_x), dialog_y:$(dialog_y), dialog_z:$(dialog_z), dialog_radius:$(dialog_radius)}"\
      }\
    }\
  ]\
}