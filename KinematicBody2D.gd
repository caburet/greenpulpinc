extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()

func get_input():
    velocity = Vector2()
    velocity.x += 1
    velocity = velocity.normalized() * speed

func _physics_process(delta):
    get_input()
    velocity = move_and_slide(velocity)
	
func _unhandled_input(event):
    if event is InputEventKey:
        if event.pressed:
            print ("aaaaa")

func _on_KinematicBody2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			print ("aaa")
	pass # Replace with function body.
