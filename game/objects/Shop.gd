extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	if body.name == "Player":
		Stats.money += 5
		var popuptween = create_tween()
		popuptween.tween_property($"../MoneySpent", "position", position - Vector2(888,0), 0.2)
		print("Oh no! Victor spent some money!")
		Stats.victorannoyed += 1
		self.queue_free()
