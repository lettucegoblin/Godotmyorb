extends Node2D

var circle_scene = preload("res://Circle.tscn")

func _ready():
    
    pass


func _input(event):
    if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
        spawn_circle(event.position)

func spawn_circle(pos):
    var circle = circle_scene.instantiate()
    circle.position = pos
    add_child(circle)
    

