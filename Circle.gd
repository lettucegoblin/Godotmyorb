extends Area2D

var velocity = Vector2()

func _ready():
    # This might be overridden by the game scene script.
    velocity = Vector2(randf_range( - 100, 100), randf_range( - 100, 100))

func _physics_process(delta):
    position += velocity * delta
    # add logic for bouncing off walls.
    if position.x < 0 or position.x > get_viewport_rect().size.x:
      velocity.x *= - 1
    if position.y < 0 or position.y > get_viewport_rect().size.y:
      velocity.y *= - 1
    
