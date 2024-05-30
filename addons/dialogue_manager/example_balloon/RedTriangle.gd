extends Sprite2D
@onready var anim = %AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_just_pressed("click") or Input.is_action_just_pressed("ui_accept"):
		anim.play("new_animation")
