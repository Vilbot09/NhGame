extends Sprite2D

var clone_timer: float = 5
var random_generator: RandomNumberGenerator = RandomNumberGenerator.new()
var is_cloning: bool = false
var time_since_last_clone: float = 0

func _ready():
	random_generator.randomize()

func _process(delta: float):
	time_since_last_clone += delta
	if !is_cloning && time_since_last_clone >= clone_timer:
		time_since_last_clone = 0
		clone_sprite()

func clone_sprite():
	is_cloning = true
	var new_sprite = duplicate()
	var x_range = get_viewport().size.x - texture.get_size().x
	var y_range = get_viewport().size.y - texture.get_size().y
	var new_position = Vector2(random_generator.randf_range(0, x_range), random_generator.randf_range(0, y_range))
	new_sprite.position = new_position
	get_parent().add_child(new_sprite)
	call_deferred("_finish_cloning")

func _finish_cloning():
	is_cloning = false











