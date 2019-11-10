extends Area2D


var typearea = randi()%4

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	
	rng.randomize()
	var basuraRand = rng.randi_range(0, 3)
	
	#------------------------------------------------------------------------------------
	print (basuraRand)
	if (basuraRand) == 0:
		#print ("genero basura  0")
		pass
	if (basuraRand) == 1:
		pass
		#print ("genero basura  1")
	if (basuraRand) == 2:
		pass
		#print ("genero basura  2")
	if (basuraRand) == 3:
		pass
		#print ("genero basura  3")
	
	#const pre1 = "res://assets-items/papel/sprites-1.png"
	#const pre2 = "res://assets-items/papel/sprites-2.png"
	#const pre3 = "res://assets-items/papel/sprites-3.png"

	
	if typearea ==0:
		rng.randomize()
		var numero0 = str(rng.randi_range(1, 3))

		var bullet_tex1 = load("res://assets-items/papel/sprites-"+numero0+".png")
		self.get_child(0).get_child(0).set_texture(bullet_tex1)
		#---------------------------------------------------------------------------------
	if typearea ==1:
		rng.randomize()
		var numero1 = str(rng.randi_range(1, 3))
		
		var bullet_tex1 = load("res://assets-items/vidrio/sprites-"+numero1+".png")
		self.get_child(0).get_child(0).set_texture(bullet_tex1)
		#-----------------------------------------------------------------------------
	if typearea ==2:
		rng.randomize()
		var numero2 = str(rng.randi_range(1, 3))
		
		var bullet_tex1 = load("res://assets-items/organico/sprites-"+numero2+".png")
		self.get_child(0).get_child(0).set_texture(bullet_tex1)
		#-----------------------------------------------------------------------------
	if typearea ==3:
		rng.randomize()
		var numero3 = str(rng.randi_range(1, 3))
		
		var bullet_tex1 = load("res://assets-items/plastico/sprites-"+numero3+".png")
		self.get_child(0).get_child(0).set_texture(bullet_tex1)		


var clicked = false

#----------------------------------------------------------------------------------
func _physics_process(delta):
    if not clicked:
        self.position.x +=2
    else:
        self.position.y +=2
    #velocity = move_and_slide(velocity)


#----------------------------------------------------------------------------------
func _on_Area2D_input_event(viewport, event, shape_idx):
	var tiempo  
	var bien = preload("res://assest/bien.png")
	
	var mal = preload("res://assest/mal.png")
	
	if event is InputEventMouseButton:
		if event.is_pressed():
			clicked=true
			#print (int(event.position.x) / int(get_viewport().size.x/4))
			if typearea +1 == int(event.position.x) / int(get_viewport().size.x/5):
				
				print ("bien")
				Globals.showok = true
				Globals.points += 10
				#get_node("punto")
				#get_node("Sprite6").set
			else:
				Globals.points -= 10
				Globals.shownotok = true
				print ("mal")
				#get_node("Sprite5").hide()
			
			
