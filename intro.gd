extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event.is_pressed():
			get_tree().change_scene("res://main.tscn")
	pass # Replace with function body.


func _on_Timer_timeout():
	get_tree().change_scene("res://main.tscn")
	pass # Replace with function body.
