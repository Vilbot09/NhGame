extends Sprite2D


func _process(delta: float) -> void:
	# Get the mouse position relative to the node's parent.



	# Move the node to the new position.
	global_position = get_global_mouse_position()

		
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
