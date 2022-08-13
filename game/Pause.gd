extends Control

func _input(event):
	if event.is_action_pressed("pause"):
		var new_pause_state = not get_tree().paused
		get_tree().paused = new_pause_state
		visible = new_pause_state


func _on_Resume_pressed():
	var new_pause_state = not get_tree().paused
	get_tree().paused = new_pause_state
	visible = new_pause_state

func _on_Mute_pressed():
	var player = get_node("../../AudioStreamPlayer")
	var player_paused = not player.stream_paused
	player.stream_paused = player_paused

func _on_Quit_pressed():
	get_tree().quit()

