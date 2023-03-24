extends Node
var tilemap
var characters
var characters_list = []
var character_position
var character_selected
var clicked_cell

func _ready():
	tilemap = get_node("grid")
	characters = get_node("characters")
	characters_list = characters.get_children()

func _process(delta):
	if Input.is_action_pressed("click_left"):
		clicked_cell = tilemap.local_to_map(tilemap.get_local_mouse_position())
		for character in characters_list:
				character_position = tilemap.local_to_map(character.get_global_position())
				if clicked_cell == character_position:
					character_selected = character
				else:
					character_selected = null
