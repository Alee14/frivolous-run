extends MarginContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Play_button_up():
	if get_tree().change_scene("res://game/Game.tscn") != OK:
		print("There was an error trying to load the scene...")
	pass # Replace with function body.


func _on_Credits_button_up():
	pass # Replace with function body.


func _on_Quit_button_up():
	get_tree().quit()
	pass # Replace with function body.
