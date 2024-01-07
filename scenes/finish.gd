extends Area2D


@export var target_level : PackedScene

func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		visible = false
		await get_tree().create_timer(0.5).timeout
		get_tree().change_scene_to_packed(target_level)
		
