extends ActionLibrary
class_name EatAction

const TEXTURE = "res://Textures/Actions/Eat.png"
const TOOLTIP := "eat"


func _ready():
	var _character = game_screen.last_selected_character
	
	var _minutes_passed = 1
	var _energy_cost = 0
	
	var _main_story = _character.character_name + " have eaten " + game_screen.selected.item.NAME
	if game_screen.selected.item.CALORIES < 0.1:
		upcoming_stories.push_back(_character.character_name + " did not like the taste")

	eat(_character, game_screen.selected.item)
	destroy_item_after_story()
	
	var emit_story_telling = emit_story_telling(_main_story)
	calculate_turn(_energy_cost, _minutes_passed)
	
	yield(emit_story_telling, "completed")
	queue_free()
