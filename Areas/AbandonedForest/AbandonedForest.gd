class_name AbandonedForest


const NEXT_AREA = Hills
var total_locations: int

const HISTORY = "An abandoned forest filled with dangers."

const TEXTURES = [
	"res://Textures/Areas/Abandoned Forest/Abandoned Forest 0.png",
	"res://Textures/Areas/Abandoned Forest/Abandoned Forest 1.png",
	"res://Textures/Areas/Abandoned Forest/Abandoned Forest 2.png"
]

const FINDINGS = [
	AngelorisFinding,
	FallenBranchFinding,
	ShiitakeShroomsFinding,
	BerriesFinding,
	WildCucumbersFinding,
	SemeryFinding
]

const ZONES = [
	CaveEntrance,
	AbandonedForestRopeHang,
	AbandonedShovel,
	AbandonedForestPath
]

const ENEMIES = [
	Wolf,
	Gnome,
	Bear,
	Leshy
]

const NPCS = [
	RowanSmithNPC
]


const WEST_ACTION = WaitAction
const LEFT_ACTION = WalkAction
const RIGHT_ACTION = ChangeDirectionAction
const EAST_ACTION = SearchAction

const MOSQUITOES := true

func _init():
	total_locations = randomize_total_locations()
	
func randomize_total_locations():
	randomize()
	return round(rand_range(30,60))
