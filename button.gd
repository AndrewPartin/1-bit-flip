extends Sprite2D

@onready var one: Texture2D = load("res://1.png")
@onready var zero: Texture2D = load("res://0.png")

@export var on: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	texture()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func texture() -> void:
	if on:
		set("texture", one)
	else:
		set("texture", zero)

func toggle() -> void:
	on = !on
	texture()
