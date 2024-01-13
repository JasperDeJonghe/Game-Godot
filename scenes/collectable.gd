extends Area2D

@onready var game_manager = %GameManager
@onready var sprite_2d = $Sprite2D

func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		sprite_2d.animation = "pick"
		game_manager.add_point()
		await get_tree().create_timer(0.2).timeout
		queue_free()
