extends Button
@export var mybody = [$"../background/body"]
@export var mytops = [$"../background/tops/pikminshirt", $"../background/tops/deltashirt", $"../background/tops/omorishirt"]
var cosmetic_on 
var tracking = 2 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mytops = [$"../background/tops/pikminshirt", $"../background/tops/deltashirt", $"../background/tops/omorishirt"]
	cosmetic_on = mytops[0]
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
	cosmetic_on = mytops[tracking]
	cosmetic_on.visible = true 
	Saving.currenttops = tracking
	print (Saving.currenttops)
	$"../AudioStreamPlayer2D".play()
	pass # Replace with function body.
