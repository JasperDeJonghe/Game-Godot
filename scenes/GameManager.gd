extends Node

@onready var finish = $"../finish"

@onready var points_label = %points_label
@onready var damage = $damage
@onready var collecting = $collecting

var points = 0

func add_point():
	collecting.play()
	points += 1
	update_label()

func remove_point():
	damage.play()
	if points != 0:
		points -= 1
	update_label()

func update_label():
	var pointsLeft = finish.minimum_poits - points
	if pointsLeft >= 0:
		points_label.text = str(pointsLeft) + " points left"
	elif pointsLeft == 0:
		points_label.text = "Finish now!"
