extends CharacterBody2D
var gravity = 100

var SPEED = 50
const JUMP_VELOCITY = -400.0
var gravitys = ProjectSettings.get_setting("physics/2d/default_gravity")
var player_scene = false
var player1 = null


func _physics_process(delta):
	if is_on_floor() == false:
		position.y += gravity
	if player_scene:
		position += (player1.position - position )/SPEED

func _on_came_body_entered(body):
	player1 = body
	player_scene = true

func _on_came_body_exited(body):
	player_scene = false
	player1 = null
