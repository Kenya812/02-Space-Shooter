extends Control

func update_time():
	$Time.text = "Time: " + str(Global.time)

func _on_Timer_timeout():
	Global.time -= 1
	if Global.time < 0:
		var _scene = get_tree().change_scene("res://UI/End_Game.tscn")
	else:
		update_time()
