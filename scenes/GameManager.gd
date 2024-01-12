extends Node

@onready var finish = $"../finish"
@onready var character_body_2d = %CharacterBody2D
@onready var points_label = %points_label
@onready var damage = $damage
@onready var collecting = $collecting

var points = 0

func add_point():
	collecting.play()
	points += 1
	if points < finish.minimum_poits:
		points_label.text = "Points: " + str(points) + " / " + str(finish.minimum_poits)
	else:
		points_label.text = "Finish now!"

func remove_point():
	damage.play()
	if points != 0:
		points -= 1
	if points < finish.minimum_poits:
		points_label.text = "Points: " + str(points) + " / " + str(finish.minimum_poits)
	else:
		points_label.text = "Finish now!"
