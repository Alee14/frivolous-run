extends KinematicBody2D

const UP = Vector2(0,-1)
export var GRAVITY = 20
export var MAXFALLSPEED = 200
export var MAXSPEED = 80
export var JUMPFORCE = 300
export var ACCEL = 10

var motion = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(_delta):
	
	motion.y += GRAVITY
	
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED
	
	if is_on_floor():
		if Input.is_action_just_released("jump"):
			motion.y = -JUMPFORCE
			pass
			
	motion.x = clamp(motion.x,-MAXSPEED,MAXSPEED)
		
	motion.x += ACCEL
	motion = move_and_slide(motion,UP)
	
	pass
