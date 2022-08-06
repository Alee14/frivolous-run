extends Control

func _on_Play_button_up():
	if get_tree().change_scene("res://game/Game.tscn") != OK:
		print("There was an error trying to load the scene...")


func _on_Credits_button_up():
	$CreditsDialog.popup_centered()


func _on_Quit_button_up():
	get_tree().quit()
