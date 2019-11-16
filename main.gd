extends Node

func _ready():
	$"ok/Sprite5".hide()
	$"notok/Sprite6".hide()
	spawn()
	pass

# is_correct: ¿Es el item correcto?
func item_capturing(is_correct):
	if is_correct:
		Globals.showok = true
		Globals.points += 1
		Globals.velocity += 0.1
		
		if Globals.spamtime > 2:
			Globals.spamtime -= 0.1
		else:
			if Globals.spamtime>1.5:
				Globals.spamtime -= 0.05
			else:
				Globals.spamtime -= 0.025
	else:
		Globals.shownotok = true
		
func _on_timer_timeout():
   spawn()
#----------------------------------------------------------------------------------

func spawn():
	if Globals.objects>0:
		var bulletscene = preload("res://vaso.tscn")
		var bullet = bulletscene.instance()
		
		add_child(bullet)

func _on_Timer_timeout():
	spawn()
	pass # Replace with function body.
func _physics_process(delta):
	#233
	#781
	$pulpo.position.x = 781+233 - (233 + ((781-233)*Globals.objects /Globals.totalobjects))
	#(100- (Globals.objects*100 /Globals.totalobjects))
	
	$Timer.wait_time=Globals.spamtime
	$Label.text="%"+str(Globals.points*100 / Globals.totalobjects) 
	if (Globals.showok):
		$"ok/Sprite5".show()
		Globals.showok = false
		$"ok/Timerok".start()
	if (Globals.shownotok):
		$errorsprite.show()
		$sonidochicharra.play()
		$silbato.hide()
		$silvatogritando.show()
		$silvatogritando.play()
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
	$errorsprite.hide()
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

func _on_silvatogritando_animation_finished():
	$silvatogritando.hide()
	$silvatogritando.stop()
	$silbato.show()
	
# Papel
func _on_Basurero1_item_capturing(item_type):
	if item_type == 0:
		item_capturing(true)
	else:
		item_capturing(false)
		
# Vidrio
func _on_Basurero2_item_capturing(item_type):
	if item_type == 1:
		item_capturing(true)
	else:
		item_capturing(false)
		
# Organicos
func _on_Basurero3_item_capturing(item_type):
	if item_type == 2:
		item_capturing(true)
	else:
		item_capturing(false)
		
# Plasticos
func _on_Basurero4_item_capturing(item_type):
	if item_type == 3:
		item_capturing(true)
	else:
		item_capturing(false)
		