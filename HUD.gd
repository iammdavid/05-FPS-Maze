extends CanvasLayer

func _physics_process(delta):
	$Score.text = " Score: " + str(Global.score) 
	if Input.is_action_just_pressed("Menu"):
		if $Menu.visible:
			$Menu.hide()
		else:
			$Menu.show()
func _on_Save_pressed():
	Global.save_game()


func _on_Load_pressed():
	Global.load_game()
