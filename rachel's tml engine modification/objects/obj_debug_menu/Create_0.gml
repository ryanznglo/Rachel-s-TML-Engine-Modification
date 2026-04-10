_tab = false
_debug_open = false

menu_x = 20
menu_y = 20
line_height = 24;

menu_index = 0;

// Add "Encounter" as the first menu item
menu_items = [
    "Encounter",
	"End Enemy Turn",
	"End Battle",
	"Set Turn",
];

encounter_list = [
	0, // nothing
	1, // enemy template
]

encounter_index = 0;

debug_turn = 0;

menu_settings = [];

// Encounter (LIST)
menu_settings[0] = {
	type: "list",
	value: method(self, function() { return encounter_index; }),
	set: method(self, function(v) { encounter_index = v; }),
	list: encounter_list
};

// Set Turn (NUMBER)
menu_settings[3] = {
	type: "number",
	value: method(self, function() { return debug_turn; }),
	set: method(self, function(v) { debug_turn = v; }),
	min: 0,
	max: 999
};