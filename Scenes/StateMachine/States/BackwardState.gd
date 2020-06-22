extends AbstractState
class_name BackwardState
#member vars
#transition_stay: Array, state_machine:Node

export var transition_state: Array = [
	
];

func _ready():
	transition_state.append("IdleState");
	transition_state.append("ForwardState");
	transition_state.append("BackwardRotationLeftState");
	transition_state.append("BackwardRotationRightState");
	pass # Replace with function body.
	
func _enter():
	print("Entering Backward State");
	pass;

func _run(input,delta):
	if(input.movement_state == 0):
		state_machine.transition(transition_state[0]);
	elif(input.movement_state == 1):
		state_machine.transition(transition_state[1]);
	elif(input.turn_state == 1):
		state_machine.transition(transition_state[2]);
	elif(input.turn_state == 2):
		state_machine.transition(transition_state[3]);
		
	state_machine.movement_body.move_backward(delta);
	
	pass;

func _exit():
	print("Exiting Backward State");
	pass;

func _transition():
	pass;
