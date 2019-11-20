extends Node2D


func _on_Area2D_input_event(viewport, event, shape_idx):
	Globals.points=0
	Globals.showok= false
	Globals.shownotok = false
	Globals.velocity = 1.5
	Globals.spamtime = 2
	Globals.objects= 40
	Globals.totalobjects = 40
	if event.is_pressed():
		get_tree().change_scene("res://scenes/Start.tscn")
