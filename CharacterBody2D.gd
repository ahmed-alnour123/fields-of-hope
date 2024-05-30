extends CharacterBody2D
#@onready var mark = "res://Sences/mark.tscn"
@onready var anim = $AnimatedSprite2D
@onready var sound = $AudioStreamPlayer2D
@onready var sounds = $AudioStreamPlayer2D2
@onready var timer = $Timeres
#@onready var booms = $boom
#@onready var marke = $mark
#@export var marked = true 
#@onready var timer_timeout =true 
#@onready var Hp = 1000
const SPEED = 900.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	#var timer_timeout =true 
	#$mark.visible = marked

	#if timer.is_stopped():
		#timer_timeout = true
	#else:
		#timer_timeout = false

	# Add the gravity.
	if  is_on_floor():
		if velocity.x == 0:
			anim.play("idle")
		else:anim.play("run")
		##anim.animation = "fall_frog"
		#velocity.y += gravity * delta 
		#if velocity.y <= 0:
			#anim.animation = "Jump_frog"
			#$CPUParticles2D.emitting =true
			#sound.play()
			#
		#else:
			#anim.animation ="fall_frog"
	#else:
		#if velocity.x == 0:
			#anim.play("idle_frog")
		#else:anim.play("run_frog")
	

	# Handle jump.
	#if Input.is_action_just_pressed("jump") and is_on_floor():
		#velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * delta * 9999
		if velocity.x <0:
			anim.flip_h=true
		elif velocity.x>0:
			anim.flip_h=false
		
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
