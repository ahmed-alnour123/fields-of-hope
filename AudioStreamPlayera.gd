extends AudioStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().create_timer(1).timeout
	
	play(1.80) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
