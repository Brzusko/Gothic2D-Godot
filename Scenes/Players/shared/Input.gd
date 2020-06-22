extends Node
class_name PlayerInput

enum Front_Movement {
	NONE,
	FORWARD,
	BACKWARD
}

enum Strafe_Movement {
	NONE,
	LEFT,
	RIGHT
}

enum Attack_Action {
	NONE,
	LEFT,
	RIGHT
}

enum Turn {
	NONE,
	LEFT,
	RIGHT
}

export var movement_state = Front_Movement.NONE;
export var strafe_state = Strafe_Movement.NONE;
export var attack_state = Attack_Action.NONE;
export var turn_state = Turn.NONE;
export var is_action_pressed: bool = false;

func _ready():
	pass 
	
func _physics_process(delta):
	clear_input();

	if(Input.is_action_pressed("action")):
		is_action_pressed = true;
			
	if(Input.is_action_pressed("move_forward") && !is_action_pressed):
		movement_state = Front_Movement.FORWARD;
	elif (Input.is_action_pressed("move_backward") && !is_action_pressed):
		movement_state = Front_Movement.BACKWARD;
	
	if(Input.is_action_pressed("attack_left") && is_action_pressed):
		attack_state = Attack_Action.LEFT;
	elif(Input.is_action_pressed("attack_right") && is_action_pressed):
		attack_state = Attack_Action.RIGHT;
	
	if(Input.is_action_pressed("strafe_left") && !is_action_pressed):
		strafe_state = Strafe_Movement.LEFT;
	elif(Input.is_action_pressed("strafe_right") && !is_action_pressed):
		strafe_state = Strafe_Movement.RIGHT;
		
	if(Input.is_action_pressed("turn_left") && !is_action_pressed):
		turn_state = Turn.LEFT;
	elif(Input.is_action_pressed("turn_right") && !is_action_pressed):
		turn_state = Turn.RIGHT;
	
	_to_string();
	return delta;

func clear_input():
	movement_state = Front_Movement.NONE;
	strafe_state = Strafe_Movement.NONE;
	attack_state = Attack_Action.NONE;
	turn_state = Turn.NONE;
	is_action_pressed = false;
	
func get_input():
	var data = {
		"movement_state": movement_state,
		"strafe_state": strafe_state,
		"attack_state": attack_state,
		"turn_state": turn_state,
		"is_action_pressed": is_action_pressed
	}
	return data;
	
func _to_string():
	var debug_value = "movement_state = " + str(movement_state) + '\n';
	debug_value += "is_action_pressed = " + str(is_action_pressed) + '\n';
	debug_value += "attack_state = " + str(attack_state) + '\n';
	debug_value += "turn_state = " + str(turn_state) + '\n';
	debug_value += "strafe_state = " + str(strafe_state);
	
	$Debug/DebugText.text = debug_value;
