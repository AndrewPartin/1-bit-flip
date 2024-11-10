extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	pass

func _input(event):
	for i in range(8):
		if event.is_action_pressed("toggle_"+str(i+1)):
			var button_mode = get_node(str(i+1))
			button_mode.set("button_pressed", !button_mode.get("button_pressed"))
	
	
