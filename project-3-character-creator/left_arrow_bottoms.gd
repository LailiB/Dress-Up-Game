extends Button
@export var mybody = [$"../background/body"]
@export var mybottoms = [$"../background/bottoms/pikminpants", $"../background/bottoms/deltapants", $"../background/bottoms/omoripants",$"../background/bottoms/omoriskirt" ]
var cosmetic_on 
var tracking = 2
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mybottoms = [$"../background/bottoms/pikminpants", $"../background/bottoms/deltapants", $"../background/bottoms/omoripants",$"../background/bottoms/omoriskirt" ]
	cosmetic_on = mybottoms[tracking]
	cosmetic_on.visible = true 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	cosmetic_on.visible = false
	tracking = tracking - 1
	if tracking == -1:
		tracking = 2
	cosmetic_on = mybottoms[tracking]
	cosmetic_on.visible = true 
	pass # Replace with function body.
