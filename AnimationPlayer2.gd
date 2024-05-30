extends AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	# Access the DialogueManager node
	#var dialogue_manager = get_node("/root/DialogueManager")
	## Connect to the dialogue_ended signal
	#dialogue_manager.connect("dialogue_ended", self, "_on_dialogue_ended")
#
#func _on_dialogue_ended(value: int):
	#print("Received dialogue end signal with value:", value)
	## Do additional processing here if needed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Give.wow == true:
		play("fade")
	
	#pass

func _on_animation_finished(anim_name):
	get_tree().change_scene_to_file("res://control.tscn") # Replace with function body.
