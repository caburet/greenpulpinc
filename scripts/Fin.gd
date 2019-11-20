extends Node2D

func _ready():
	$Label.text="%"+str(Globals.points*100 / Globals.totalobjects) 


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event.is_pressed():
		get_tree().change_scene("res://scenes/Creditos.tscn")

