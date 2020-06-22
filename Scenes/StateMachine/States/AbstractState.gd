extends Node
class_name AbstractState
#member vars
#transition_stay: Array, state_machine:Node

onready var state_machine = get_parent();

func _ready():
	pass # Replace with function body.
	
func _enter():
	print("Entering Forward State");
	pass;

func _run(input,delta):
	pass;

func _exit():
	print("Exiting Forward State");
	pass;

func _transition():
	pass;
