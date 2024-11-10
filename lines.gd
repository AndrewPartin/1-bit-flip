extends Sprite2D

@onready var green_down: Texture2D = load("res://GREEN_DOWN-1.png")
@onready var green_line: Texture2D = load("res://GREEN_LINE-1.png")
@onready var green_up: Texture2D = load("res://GREEN_UP-1.png")
@onready var red_down: Texture2D = load("res://RED_DOWN-1.png")
@onready var red_line: Texture2D = load("res://RED_LINE-1.png")
@onready var red_up: Texture2D = load("res://RED_UP-1.png")

@export var green_down1: bool
@export var green_line1: bool
@export var green_up1: bool
@export var red_down1: bool
@export var red_line1: bool
@export var red_up1: bool
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_the_texture()

# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	pass
	
# set the correct texture based on boolean variables
func set_the_texture() -> void:
	if green_up1:
		set("texture", green_up)
	elif green_line1:
		set("texture", green_line)
	elif green_down1:
		set("texture", green_down)
	elif red_up1:
		set("texture", red_up)
	elif red_line1:
		set("texture", red_line)
	else:
		set("texture", red_down)
