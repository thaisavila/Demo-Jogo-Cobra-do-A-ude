extends Area2D

var score_label: Label
var score:int = 0

# Limites do mapa
@export var limit_left = -230
@export var limit_right = 850
@export var limit_upper = -100
@export var limit_lower = 400

signal guava_colected

func _ready() -> void:
	score_label = get_node("/root/map/score")
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.name == "Player":
		emit_signal("guava_colected")
		teleport()
		update_scores()

func teleport():
	position.x = randf_range(limit_left, limit_right)
	position.y = randf_range(limit_upper, limit_lower)

func update_scores():
	score +=1
	score_label.text = "Goiabas: " + str(score)
	
	if score >= 10 :
		print("Deu 10")
		get_tree().change_scene_to_file("res://cenas/ganhou.tscn")

func _process(delta: float) -> void:
	pass
