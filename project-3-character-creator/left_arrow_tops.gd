extends Button
@export var mybody = [$"../background/body"]
@export var mytops = [$"../background/tops/pikminshirt", $"../background/tops/deltashirt", $"../background/tops/omorishirt"]
var cosmetic_on 
var tracking = 2 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mytops = [$"../background/tops/pikminshirt", $"../background/tops/deltashirt", $"../background/tops/omorishirt"]
	cosmetic_on = mytops[tracking]
	cosmetic_on.visible = true 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	cosmetic_on.visible = false
	tracking = tracking - 1
	#left arrows go in the negatives, ask how to fix
	if tracking == mytops.size():
		tracking = 2
	cosmetic_on = mytops[tracking]
	cosmetic_on.visible = true 
	Saving.currenttops = tracking
	print (Saving.currenttops)
	pass # Replace with function body.
