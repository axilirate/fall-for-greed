extends Enemy
class_name Gnome

# Used for "you have killed the ---"
const NAME = "the gnome"

const HISTORY = "A small angry gnome searching for something or someone."

const UNIT_TEXTURE := "res://Textures/Battle/Enemies/Gnome Unit.png"

const TEXTURES = [
	"res://Textures/Areas/Abandoned Forest/Enemies/Gnome Enemy.png"
]


var health := 1.0
const DAMAGE := 0.2
const SPEED := 1.6
const POWER := 3


const WEST_ACTION = null
const LEFT_ACTION = FightAction
const RIGHT_ACTION = RunAction
const EAST_ACTION = null


const RAND_WEIGHT := 0.1


func death_curse(game_screen):
	var characters = game_screen.get_node("Logic/Characters").get_children()
	var rand_index:int = randi() % characters.size()
	var effect = Effect.new()
	var misfortune = Misfortune.new()
	misfortune.deactivation_minute = 5760
	effect.active_effect = misfortune

	characters[rand_index].add_child(effect)
