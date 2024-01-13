extends CharacterBody2D


var speed = -60

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var game_manager = %GameManager
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var game_over = $"../gameOver"
@onready var ui = $"../UI"

var facing_right = false


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		
	if !$RayCast2D.is_colliding() && is_on_floor():
		flip()

	velocity.x = speed
	move_and_slide()

func flip():
	facing_right = !facing_right
	
	scale.x = abs(scale.x) * -1
	if facing_right:
		speed = abs(speed)
	else:
		speed = abs(speed) * -1

func _on_deathzone_body_entered(body):
	if (body.name == "CharacterBody2D"):
		ui.visible = false
		game_over = true
		
func _on_hitbox_body_entered(body):
	if (body.name == "CharacterBody2D"):
		animated_sprite_2d.animation = "hit"
		await get_tree().create_timer(0.2).timeout
		queue_free()
		
