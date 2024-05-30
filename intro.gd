extends Control
@onready var anim = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	$AnimationPlayer.play("intro")
	await get_tree().create_timer(3).timeout
	$AnimationPlayer.play("fade")
	await get_tree().create_timer(3.5).timeout
	get_tree().change_scene_to_file("res://control.tscn") # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
