extends Node2D

var time : float = 0.0

@onready var label_time = $time
@onready var snake = get_node("/root/map/Snake")
@onready var player = get_node("/root/map/Player")

func _ready() -> void:
	pass # Replace with function body.



func _process(delta: float) -> void:
	time += delta
	
	var minutos = int(time) / 60
	var segundos = int(time) % 60
	
	label_time.text = "%02d:%02d" % [minutos, segundos]
	
	if time >= 120 :
		get_tree().change_scene_to_file("res://cenas/perdeu.tscn")

func _on_area_2d_body_entered(body: Node2D) -> void:
	print("Algo entrou no Area2D: ", body.name)
	if body == player:
		print("Snake encostou! Indo para perdeu.tscn")
		get_tree().call_deferred("change_scene_to_file", "res://cenas/perdeu.tscn")
