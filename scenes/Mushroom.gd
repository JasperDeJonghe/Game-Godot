extends CharacterBody2D


var speed = -60

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var game_manager = %GameManager
@onready var animated_sprite_2d = $AnimatedSprite2D
<<<<<<< HEAD
@onready var game_over = %gameOver


var killed = false
=======

>>>>>>> fa4adb0283689fe350583596038bc1ab213d86e5
var facing_right = false


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		
<<<<<<< HEAD
	if !$RayCast2D.is_colliding():
		flip()
		
	if $RayCast2D2.is_colliding():
		var colliding_object = $RayCast2D2.get_collider()

		if colliding_object and colliding_object is TileMap:
			flip()
	
	if $RayCast2D3.is_colliding():
		var colliding_object = $RayCast2D3.get_collider()

		if colliding_object and colliding_object is TileMap:
			flip()
=======
	if !$RayCast2D.is_colliding() && is_on_floor():
		flip()
>>>>>>> fa4adb0283689fe350583596038bc1ab213d86e5

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
<<<<<<< HEAD
	if not killed:
		if (body.name == "CharacterBody2D"):
			get_tree().change_scene_to_file("res://scenes/levels/gameOver.tscn")
=======
	if (body.name == "CharacterBody2D"):
		print("You died!")
>>>>>>> fa4adb0283689fe350583596038bc1ab213d86e5
		
func _on_hitbox_body_entered(body):
	if (body.name == "CharacterBody2D"):
		animated_sprite_2d.animation = "hit"
<<<<<<< HEAD
		killed = true
=======
>>>>>>> fa4adb0283689fe350583596038bc1ab213d86e5
		await get_tree().create_timer(0.2).timeout
		queue_free()
		
