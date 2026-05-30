extends Control
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var game_startup: AudioStreamPlayer = $GameStartup
@onready var timer: Timer = $Timer

func _ready():
	game_startup.play()
	animation_player.play("intro")
	timer.start()
	set_process_input(true)



func _on_timer_timeout() -> void:
	skip_intro()
	
func _input(event: InputEvent) -> void:
	if Input.is_anything_pressed():
		skip_intro()
		
func skip_intro():
	set_process_input(false)
	var ml = get_node("/root/ModLoader")
	if ml and ml.has_method("change_scene"):
		ml.change_scene("res://Scenes/mainmenu.tscn")
	else:
		get_tree().change_scene_to_file("res://Scenes/mainmenu.tscn")
