extends Area2D


var typearea = randi()%4

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	if Globals.objects>0:
		Globals.objects -=1
		rng.randomize()
		
		if typearea ==0:
			rng.randomize()
			var numero0 = str(rng.randi_range(1, 3))
	
			var bullet_tex1 = load("res://assets-items/papel/"+numero0+".png")
			self.get_child(0).get_child(0).set_texture(bullet_tex1)
			#---------------------------------------------------------------------------------
		if typearea ==1:
			rng.randomize()
			var numero1 = str(rng.randi_range(1, 3))
			
			var bullet_tex1 = load("res://assets-items/vidrio/"+numero1+".png")
			self.get_child(0).get_child(0).set_texture(bullet_tex1)
			#-----------------------------------------------------------------------------
		if typearea ==2:
			rng.randomize()
			var numero2 = str(rng.randi_range(1, 3))
			
			var bullet_tex1 = load("res://assets-items/organico/"+numero2+".png")
			self.get_child(0).get_child(0).set_texture(bullet_tex1)
			#-----------------------------------------------------------------------------
		if typearea ==3:
			rng.randomize()
			var numero3 = str(rng.randi_range(1, 3))
			
			var bullet_tex1 = load("res://assets-items/plastico/"+numero3+".png")
			self.get_child(0).get_child(0).set_texture(bullet_tex1)		
		


var clicked = false

#----------------------------------------------------------------------------------
func _physics_process(delta):
    if not clicked:
        self.position.x += Globals.velocity
    else:
        self.position.y += Globals.velocity

#----------------------------------------------------------------------------------
func _on_Area2D_input_event(viewport, event, shape_idx):
	var tiempo  
	var bien = preload("res://assest/bien.png")
	
	var mal = preload("res://assest/mal.png")
	
	if event is InputEventMouseButton:
		if event.is_pressed():
			clicked=true
			if typearea +1 == int(event.position.x) / int(get_viewport().size.x/5):
				
				print ("bien")
				Globals.showok = true
				Globals.points += 1
				Globals.velocity += 0.1
			else:
				Globals.shownotok = true
				print ("mal")

			
			
