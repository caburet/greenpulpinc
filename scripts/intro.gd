extends Node2D

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event.is_pressed():
			get_tree().change_scene("res://scenes/main.tscn")
	pass # Replace with function body.


func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/main.tscn")
	pass # Replace with function body.
