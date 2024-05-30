extends Control
#@onready var zombie = $AnimatedSprite2D
#@onready var zombie2 = $AnimatedSprite2D2
@onready var z= %AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	#zombie.play("default") # Replace with function body.
	#zombie2.play("default") # Replace with function body.
	if Mainmusic.playing == false:
		Mainmusic.play()
	Give.wow = false
	z.play("new_animation")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
