extends Area2D

@onready var game_manager = %GameManager

@export var target_level : PackedScene
@export var minimum_poits : int

func _on_body_entered(body):
	if game_manager.points >= minimum_poits:
		if (body.name == "CharacterBody2D"):
			visible = false
			await get_tree().create_timer(0.5).timeout
			get_tree().change_scene_to_packed(target_level)
