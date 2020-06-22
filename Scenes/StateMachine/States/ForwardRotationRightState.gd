extends AbstractState
class_name ForwardRotationRightState
#member vars
#transition_stay: Array, state_machine:Node

export var transition_state: Array = [
	
];

func _ready():
	transition_state.append("ForwardState");
	transition_state.append("ForwardRotationLeftState");
	pass # Replace with function body.
	
func _enter():
	print("Entering Forward State");
	pass;

func _run(input,delta):
	
	if(input.turn_state == 0 || input.movement_state == 0):
		state_machine.transition(transition_state[0]);
	elif(input.turn_state == 1):
		state_machine.transition(transition_state[1]);
	
	state_machine.movement_body.move_forward(delta);
	state_machine.movement_body.rotate_right(delta);
	
	pass;

func _exit():
	print("Exiting Forward State");
	pass;

func _transition():
	pass;
