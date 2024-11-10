extends Sprite2D

const TYPES = ["and", "nand", "or", "nor", "xor", "xnor"]
const TRUE_SHIT = {
	"and":	[[true, true]],
	"nand": [[false, false],[true, false],[false, true]],
	"or":	[[true, false],[false, true],[true, true]],
	"nor":	[[false, false]],
	"xor":	[[true, false],[false,true]],
	"xnor": [[false, false],[true,true]]
}

@onready var and_gate: Texture2D = load("res://and.png")
@onready var nand_gate: Texture2D = load("res://nand.png")
@onready var or_gate: Texture2D = load("res://or.png")
@onready var nor_gate: Texture2D = load("res://nor.png")
@onready var xor_gate: Texture2D = load("res://xor.png")
@onready var xnor_gate: Texture2D = load("res://xnor.png")

@export var type: String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	new_gate()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	randi() % 3 == 0

func new_gate() -> void:
	type = TYPES[randi() % TYPES.size()]
	set("texture", load("res://" + type + ".png"))

func get_inputs(out: bool) -> Array:
	var somerealrealrealshit: Array = TRUE_SHIT[type]
	return somerealrealrealshit[randi() % somerealrealrealshit.size()]

func get_output(in1: bool, in2: bool) -> bool:
	if type == "and":
		return in1 and in2
	elif type == "nand":
		return !(in1 and in2)
	elif type == "or":
		return in1 or in2
	elif type == "nor":
		return !(in1 or in2)
	elif type == "xor":
		return in1 != in2
	elif type == "xnor":
		return in1 == in2
	else:
		push_error("THIS BROKeN BROkEN BRoKEN FIX FIX FIX NOW NOW NOW")
		return false
