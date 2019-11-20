extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var points
var showok= false
var shownotok = false

var velocity = 1.2
var spamtime = 1.8
var objects= 50
var totalobjects = 50
# Called when the node enters the scene tree for the first time.
func _ready():
	points =0
