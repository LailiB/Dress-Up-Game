extends ColorPicker

var hair_color 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hair_color = [$"../hair/short afro", $"../hair/braids", $"../hair/afro"]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if hair_color:
		for hair in hair_color:
			hair.self_modulate = color
	pass
