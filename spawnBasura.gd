extends Node

const basura = preload("res://assest/1.jpeg")


func _ready():
	#spawn()
	pass



#----------------------------------------------------------------------------------
func spawn():
	var basuraA = basura.instance()
	get_node("punto").add_child(basuraA)
	print(basuraA)
