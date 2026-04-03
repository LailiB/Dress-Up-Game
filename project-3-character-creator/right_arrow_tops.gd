extends Button
@export var mybody = [$"../background/body"]
#@export var myeyes = [$"../background/eyes", $"../background/eyes/eyes (lashes)"]
@export var mytops = [$"../background/tops/pikminshirt", $"../background/tops/deltashirt", $"../background/tops/omorishirt"]

var tracking = 0 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cosmetic_on = mybody[tracking]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
