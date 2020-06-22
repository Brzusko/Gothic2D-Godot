extends AbstractState
class_name IdleState
#member vars
#transition_stay: Array, state_machine:Node

export var transition_state: Array = [
	
];

func _ready():
	transition_state.append("ForwardState");
	transition_state.append("BackwardState");
	
	transition_state.append("AttackLeftState");
	transition_state.append("AttackRightState");
	
	transition_state.append("IdleRotationLeftState");
	transition_state.append("IdleRotationRightState");
	
	pass # Replace with function body.
	
func _enter():
	print("Entering Idle State");
	pass;

func _run(input,delta):
	if(input.movement_state == 1):
		state_machine.transition(transition_state[0]);
	elif(input.movement_state == 2):
		state_machine.transition(transition_state[1]);
	elif(input.movement_state == 0 && input.turn_state == 1):
		state_machine.transition(transition_state[4]);
	elif(input.movement_state == 0 && input.turn_state == 2):
		state_machine.transition(transition_state[5]);
	pass;

func _exit():
	print("Exiting Idle State");
	pass;

func _transition():
	pass;
