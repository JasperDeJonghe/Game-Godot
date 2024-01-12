extends Area2D

@onready var game_manager = %GameManager
@onready var player = %CharacterBody2D

func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		queue_free()
		player.JUMP_VELOCITY = -1500.0
