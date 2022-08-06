extends KinematicBody2D

const UP = Vector2(0,-1)
export var GRAVITY = 20
export var MAXFALLSPEED = 200
export var MAXSPEED = 80
export var JUMPFORCE = 300
export var ACCEL = 20

var motion = Vector2()


func _physics_process(_delta):
	
	motion.y += GRAVITY
	
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED
		
	motion.x = clamp(motion.x,-MAXSPEED,MAXSPEED)
		
	if Input.is_action_pressed("left"):
		motion.x -= ACCEL
		
	elif Input.is_action_pressed("right"):
		motion.x += ACCEL
	else:
		motion.x = lerp(motion.x,0,0.2)
	
	if is_on_floor():
		if Input.is_action_just_pressed("jump"):
			motion.y = -JUMPFORCE
		
	
	motion = move_and_slide(motion,UP)

