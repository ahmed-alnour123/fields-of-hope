extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Mainmusic.stop()

	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Music.music == true:
		Mainmusic.play()
		
		
		
		
		
