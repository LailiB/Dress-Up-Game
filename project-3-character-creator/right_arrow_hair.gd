extends Button
@export var mybody = [$"../background/body"]
@export var myhair = [$"../background/hair/short afro", $"../background/hair/braids", $"../background/hair/afro"]
var cosmetic_on 
var tracking = 0 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	myhair = [$"../background/hair/short afro", $"../background/hair/braids", $"../background/hair/afro"]
	cosmetic_on = myhair[tracking]
	cosmetic_on.visible = true 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	cosmetic_on.visible = false
	tracking = tracking + 1
	if tracking == myhair.size():
		tracking = 0 
	cosmetic_on = myhair[tracking]
	cosmetic_on.visible = true 
	Saving.currenttops = tracking
	print (Saving.currenttops)
	$"../AudioStreamPlayer2D".play()
	pass # Replace with function body.
