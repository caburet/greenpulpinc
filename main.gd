extends Node

func _ready():
	$"ok/Sprite5".hide()
	$"notok/Sprite6".hide()
	spawn()
	pass


func _on_timer_timeout():
   spawn()
#----------------------------------------------------------------------------------
func spawn():
	if Globals.objects>0:
		var bulletscene = preload("res://vaso.tscn")
		var bullet = bulletscene.instance()
		add_child(bullet)
		print ("cargo")

func _on_Timer_timeout():
	spawn()
	pass # Replace with function body.
func _physics_process(delta):
	$Label.text=str(Globals.points)
	if (Globals.showok):
		$"ok/Sprite5".show()
		Globals.showok = false
		$"ok/Timerok".start()
	if (Globals.shownotok):
		$"notok/Sprite6".show()
		Globals.shownotok = false
		$"notok/Timernot".start()
	if (Globals.objects <=0):
		print ("timerendstart")
		if $timerend.is_stopped():
			$timerend.start()

func _on_Timernot_timeout():
	print ("timeout")
	$notok/Sprite6.hide()
	$"notok/Timernot".stop()
	pass # Replace with function body.


func _on_Timerok_timeout():
	print ("timeout")
	$"ok/Sprite5".hide()
	$"ok/Timerok".stop()
	pass # Replace with function body.
	
func terminar():
	get_tree().change_scene( "res://creditos.tscn")



func _on_timerend_timeout():
	print ("end")
	get_tree().change_scene( "res://Fin.tscn")
	pass # Replace with function body.
