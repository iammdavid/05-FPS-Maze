extends KinematicBody


var new_position = 10 


# Called when the node enters the scene tree for the first time.
func _ready():
	$Tween.interpolate_property(self, "transform:origin:x", transform.origin.x, new_position, 6.0, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()
	new_position = 0

func _on_Tween_tween_all_completed():
	$Tween.interpolate_property(self, "transform:origin:x", transform.origin.x, new_position, 6.0, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()
	if new_position == 0:
		new_position = 10
	else: 
		new_position = 0
