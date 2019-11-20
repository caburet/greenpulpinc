extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var points
var showok= false
var shownotok = false
var level=1
var level1end = 10
var level2end = 20
var velocity = 2
var spamtime = 3
var velocity2 = 3
var spamtime2 = 1.5
var objects= 30
var totalobjects = 30

# Called when the node enters the scene tree for the first time.
func _ready():
	points =0
