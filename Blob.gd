extends Node2D

var velocity = Vector2()
# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = Vector2(randf_range( - 100, 100), randf_range( - 100, 100))
	# find the closest node with the name "BlobBody" and apply a force to it
	

	#get_node("BlobBody").constant_force = velocity
	get_node("BlobBody").apply_force(velocity)
	var rigidBodies = get_node("BlobBody").get_rigid_bodies()
	for body in rigidBodies:
		body.rigidbody.body_entered.connect(_on_BlobBody_body_entered)

func _on_BlobBody_body_entered(body):
	# apply a force to the body that entered
	body.apply_impulse(Vector2(100, 100), Vector2(0, 0))
	# print debug message
	print("BlobBody collided with ", body)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	#get_node("BlobBody").linear_velocity += velocity * delta
