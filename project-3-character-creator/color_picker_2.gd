extends ColorPicker
var body_color = [$"../body"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	body_color = [$"../body"]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for body in body_color:
			body.self_modulate = color
	pass
