extends Node

func _on_previous_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/levelSelector1.tscn")

func _on_level_5_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/level5.tscn")
