extends Node
class_name StateMachine

var states = {
	
};

var input: Dictionary = {};

var current_state: AbstractState;

func _ready():
	var state_nodes = get_children();
	for state in state_nodes:
		states[state.name] = state;

func _physics_process(delta):
	current_state._run(input, delta);
	$Debug.text = "CurrentState: " + current_state.name;
	return delta;

func transition(state_name:String):
	if(current_state != null):
		current_state._exit();
	current_state = states[state_name];
	current_state._enter();

func _setup_input(input):
	self.input = input;
	
