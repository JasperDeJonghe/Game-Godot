extends Area2D

@onready var game_manager = %GameManager
@onready var player = %CharacterBody2D
@onready var sprite_2d = $Sprite2D

func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		sprite_2d.animation = "pick"
		player.JUMP_VELOCITY = -1500.0
		queue_free()
