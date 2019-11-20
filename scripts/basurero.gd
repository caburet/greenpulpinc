extends Area2D

signal item_capturing(item_type)

func _on_Basurero_area_entered(area):
	if area is Vaso:
		emit_signal("item_capturing", area.typearea)
		area.queue_free()
		
