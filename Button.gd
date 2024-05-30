extends Button
#@onready var audio = $"../AudioStreamPlayer"
@onready var anim = %AnimationPlayer
func _on_pressed():
	anim.play("new_animation_2")
	#get_tree().change_scene_to_file("res://night_time.tscn") # Replace with function body.


#
#
#func _on_audio_stream_player_finished():
	#get_tree().change_scene_to_file("res://level1.tscn") # Replace with function body.


func _on_animation_player_animation_finished(anim_name):
	if anim_name =="new_animation_2":
		get_tree().change_scene_to_file("res://night_time.tscn") # Replace with function body.
