extends Area2D

var screensize = Vector2()

onready var player = $"/root".find_node("Player",true,false)

func _ready():
	#connect("body_entered",player,"_on_Coin_body_entered")
	#player.connect("pickup",self,"_on_Player_coin_pickup")
	$Tween.interpolate_property($AnimatedSprite, 'modulate', 
							Color(1, 1, 1, 1),
							Color(1, 1, 1, 0), 0.3,
							Tween.TRANS_QUAD,
							Tween.EASE_IN_OUT)
	#$Tween.interpolate_property($AnimatedSprite, 'scale',
	#						$AnimatedSprite.scale,
	#						$AnimatedSprite.scale * 3, 0.3,
	#						Tween.TRANS_QUAD,
	#						Tween.EASE_IN_OUT)

func pickup():
	monitoring = false
	$Tween.start()


func _on_Tween_tween_completed(object, key):
	queue_free() # Replace with function body.


func _on_Powerup_area_entered(area):
	if area.is_in_group("obstacles"):
		position = Vector2(rand_range(0, screensize.x), rand_range(0, screensize.y))


func _on_Lifetime_timeout():
	queue_free() # Replace with function body.
