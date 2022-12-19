extends CharacterBody2D

@export_range(0,300,1) var speed:int = 100

func _physics_process(delta):
	
	var direction:float = Input.get_axis("move_up", "move_down")
	
	velocity.y = move_toward(velocity.y, 0, speed)
	
	if not is_zero_approx(direction):
		velocity.y += direction * speed
	
	move_and_slide()
