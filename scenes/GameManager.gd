extends Node

@onready var points_label = %points_label
@onready var damage = $damage

var points = 0

func add_point():
	points += 1
	points_label.text = "Points: " + str(points)

func remove_point():
	damage.play()
	if points != 0:
		points -= 1
	points_label.text = "Points: " + str(points)
