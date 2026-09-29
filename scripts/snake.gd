extends CharacterBody2D

@export var speed = 90.0

@onready var player = get_node("/root/map/Player")


func _physics_process(_delta):
	if not player:
		return
	
	#print("Snake global_position: ", global_position)
	#print("Player node global_position: ", player.global_position)
	
	var to_player = player.global_position - global_position
	var distance = to_player.length()
	#print("Distância calculada: ", distance)
	
	var direction = to_player.normalized()
	velocity = direction * speed
	move_and_slide()
	
