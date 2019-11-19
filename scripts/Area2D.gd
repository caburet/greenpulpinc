extends Area2D


var typearea = randi()%4

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	
	rng.randomize()
	var basuraRand = rng.randi_range(0, 3)
	#------------------------------------------------------------------
	
	var sprite = Sprite.new()
	sprite.texture = load("res://assets/assest/1.jpeg")
	#get_node("punto").add_child(sprite)
	#$Node.add_child(sprite)

	#------------------------------------------------------------------------------------
	print (basuraRand)
	if (basuraRand) == 0:

		print ("genero basura  0")
		
	if (basuraRand) == 1:

		print ("genero basura  1")
	if (basuraRand) == 2:

		print ("genero basura  2")
	if (basuraRand) == 3:

		print ("genero basura  3")
	
	
	
	if typearea ==0:
		var bullet_tex1 = preload("res://assets/assest/1.jpeg")
		self.get_child(0).get_child(0).set_texture(bullet_tex1)
	if typearea ==1:
		var bullet_tex1 = preload("res://assets/assest/2.jpeg")
		self.get_child(0).get_child(0).set_texture(bullet_tex1)
	if typearea ==2:
		var bullet_tex1 = preload("res://assets/assest/3.jpeg")
		self.get_child(0).get_child(0).set_texture(bullet_tex1)
	if typearea ==3:
		var bullet_tex1 = preload("res://assets/assest/4.jpeg")
		self.get_child(0).get_child(0).set_texture(bullet_tex1)		


var clicked = false


#----------------------------------------------------------------------------------
func _physics_process(delta):
    if not clicked:
        self.position.x +=3
    else:
        self.position.y +=3
    #velocity = move_and_slide(velocity)


#----------------------------------------------------------------------------------
func _on_Area2D_input_event(viewport, event, shape_idx):
	var tiempo  
	
	var bien = preload("res://assets/assest/bien.png")
	
	var mal = preload("res://assets/assest/mal.png")
	
	if event is InputEventMouseButton:
		if event.is_pressed():
			clicked=true
			#print (int(event.position.x) / int(get_viewport().size.x/4))
			if typearea == int(event.position.x) / int(get_viewport().size.x/4):
				
				print ("bien")
				get_node("punto")
				#get_node("Sprite6").set
			else:
				print ("mal")
				#get_node("Sprite5").hide()
			
			
