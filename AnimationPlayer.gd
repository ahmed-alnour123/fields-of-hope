extends AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	play("new_animation") # Replace with function body.

	# Do additional processing here if needed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_animation_finished(anim_name):
	DialogueManager.show_example_dialogue_balloon(load("res://main.dialogue"),"start") # Replace with function body.


