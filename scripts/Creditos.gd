extends Node2D


func _on_Area2D_input_event(viewport, event, shape_idx):
	Globals.points=0
	Globals.showok= false
	Globals.shownotok = false
	Globals.level=1
	Globals.level1end = 10
	Globals.level2end = 20
	Globals.velocity = 2
	Globals.spamtime = 3
	Globals.velocity2 = 3
	Globals.spamtime2 = 1.5
	Globals.objects= 30
	Globals.totalobjects = 30
	if event.is_pressed():
		get_tree().change_scene("res://scenes/Start.tscn")
