extends AbstractState
class_name IdleRotationLeftState
#member vars
#transition_stay: Array, state_machine:Node

export var transition_state: Array = [
	
];

func _ready():
	transition_state.append("IdleState");
	transition_state.append("IdleRotationRightState");
	
func _enter():
	print("Entering I_Rotation State");

func _run(input,delta):
	
	if(input.turn_state == 0):
		state_machine.transition(transition_state[0]);
	elif(input.turn_state == 2):
		state_machine.transition(transition_state[1])
	
	state_machine.movement_body.rotate_left(delta);
	
	pass;

func _exit():
	print("Exiting I_Rotation_Left State");
	pass;

func _transition():
	pass;
