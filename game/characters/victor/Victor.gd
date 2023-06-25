extends CharacterBody2D

var SPEED = 100
const JUMP_VELOCITY = -500.0
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var player
var chase = true

func _physics_process(delta):
	velocity.y += gravity * delta
	if chase == true:
		if Input.is_action_just_pressed("ui_accept") and is_on_floor():
			velocity.y = JUMP_VELOCITY
		player = get_node("../Player")
		var direction = (player.position - self.position).normalized()
		velocity.x = direction.x * SPEED
		move_and_slide()


func _on_player_collision_body_entered(body):
	if body.name == "Player":
		print("Killed player")
		chase = false
		Stats.playerdead = true
