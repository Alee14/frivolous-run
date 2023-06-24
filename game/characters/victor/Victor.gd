extends CharacterBody2D

var SPEED = 100
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var player

func _physics_process(delta):
	velocity.y += gravity * delta
	player = get_node("../Player")
	var direction = (player.position - self.position).normalized()
	velocity.x = direction.x * SPEED
	move_and_slide()


func _on_player_collision_body_entered(body):
	if body.name == "Player":
		print("Killed player")
		Stats.playerdead == true
