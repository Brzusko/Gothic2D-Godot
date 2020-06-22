extends StateMachine
class_name BasicStateMachine

var movement_body: Dummy;

func _ready():
	._ready();
	movement_body = get_parent();
	transition("IdleState");
	pass # Replace with function body.

