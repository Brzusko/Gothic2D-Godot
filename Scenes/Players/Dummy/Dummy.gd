extends KinematicBody2D
class_name Dummy

export var movement_speed_forward: float = 0.0;
export var movement_speed_backward: float = 0.0;
export var rotation_speed: float = 0.0;
export var strafe_speed: float = 0.0;

func _ready():
	pass 
	
func _physics_process(delta):
	$BasicStateMachine.input = $Input.get_input();
	return delta;
	
func _move_forward():
	pass;

func _move_backward():
	pass;
	
func get_forward():
	var _transform = transform;
	
func move_forward(delta):
	var move_vec = (transform.y * (movement_speed_forward * delta)) * -1;
	var _collide = move_and_collide(move_vec);	

func move_backward(delta):
	var move_vec = (transform.y * (movement_speed_backward * delta));
	var _collide = move_and_collide(move_vec);
	
func rotate_left(delta):
	rotate(-rotation_speed * delta);

func rotate_right(delta):
	rotate(rotation_speed * delta);

