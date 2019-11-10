extends KinematicBody2D

var vel = Vector2()
 

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	vel = Vector2(rand_range(1, 20),10)
	self.position.x +=3

func _fixed_process(delta):
	self.position.x +=3
	