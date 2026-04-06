extends LineEdit
var cosmetic_on 
var tracking = 0 
var myhair = [$"../background/hair/short afro", $"../background/hair/braids", $"../background/hair/afro"]
var mytops = [$"../background/tops/pikminshirt", $"../background/tops/deltashirt", $"../background/tops/omorishirt"]
var mybottoms = [$"../background/bottoms/pikminpants", $"../background/bottoms/deltapants", $"../background/bottoms/omoripants",$"../background/bottoms/omoriskirt" ]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	myhair = [$"../background/hair/short afro", $"../background/hair/braids", $"../background/hair/afro"]
	mytops = [$"../background/tops/pikminshirt", $"../background/tops/deltashirt", $"../background/tops/omorishirt"]
	mybottoms = [$"../background/bottoms/pikminpants", $"../background/bottoms/deltapants", $"../background/bottoms/omoripants",$"../background/bottoms/omoriskirt" ]
	cosmetic_on = mytops[tracking]
	cosmetic_on.visible = true 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_text_submitted(new_text: String) -> void:
	cosmetic_on.visible = false
	if tracking == myhair.size():
		tracking = 0
	tracking = int(text[0])
	cosmetic_on = myhair[tracking]
	cosmetic_on.visible = true 
	
	if tracking == mytops.size():
		tracking = 0 
		tracking = int(text[1])
	cosmetic_on = mytops[tracking]
	cosmetic_on.visible = true 
	
	if tracking == mybottoms.size():
		tracking = 0 
		tracking = int(text[2])
	cosmetic_on = mybottoms[tracking]
	cosmetic_on.visible = true 
	pass # Replace with function body.
