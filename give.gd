extends Node
#@onready var end=false
#@onready var a = %AnimationPlayer2
@onready var wow= false # Replace with function body.
@onready var music = false # Replace with function body.
var dir = -1
# Called when the node enters the scene tree for the first time.
func _ready():
	if Input.is_action_just_pressed("full"):
		dir *= -1
		if dir == 1:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		else:  DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED) # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#if wow == true:
		#a.play("fade")
	pass
