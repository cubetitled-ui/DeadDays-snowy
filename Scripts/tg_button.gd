extends ColorRect


func _on_button_pressed() -> void:
	OS.shell_open("https://t.me/oknogmdv")
func _on_snowy_button_pressed() -> void:
	var mod_menu = load("res://Scenes/mod_menu.tscn.tscn").instantiate()
	add_child(mod_menu)

func _on_donate_button_pressed():
	OS.shell_open("https://www.donationalerts.com/r/oknogmdv")
