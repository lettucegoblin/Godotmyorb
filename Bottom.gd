extends CollisionShape2D


# Called when the node enters the scene tree for the first time.
func _ready():
	self.shape.set_distance(get_viewport_rect().size.y * -1)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
