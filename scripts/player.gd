extends CharacterBody2D

@onready var player = $Player
@onready var snake = get_node("/root/map/Snake")

@export var speed = 200.0

# Limites do mapa (ajusta pros valores do seu)
@export var limite_esquerda = 20
@export var limite_direita = 1120
@export var limite_cima = 40
@export var limite_baixo = 610

func _ready() -> void:
	pass
	

func _physics_process(_delta):
	var input_dir = Input.get_vector("walk_left", "walk_right", "walk_up", "walk_down")

	velocity = input_dir * speed

	move_and_slide()
	
	if input_dir.x != 0:
		if input_dir.x < 0:
			player.flip_h = true   # esquerda
		else:
			player.flip_h = false  # direita
	
	# Trava a posição dentro dos limites
	position.x = clamp(position.x, limite_esquerda, limite_direita)
	position.y = clamp(position.y, limite_cima, limite_baixo)
