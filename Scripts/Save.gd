extends Node


var hitPoints : int = 99
var maxHitpoints : int = 99
var hpText

var prayerPoints : int = 99
var maxPrayerPoints : int = 99
var prayerText

var maxHit : int
var prayerFkey : int
var invFkey : int
var weaponSelect : int
var playerAnim

func _ready():
	print(maxHit)
	weaponSelect = $"/root/Spatial/CanvasLayer/Attack Speed/OptionButton2".get_selected_id()
	invFkey = $"/root/Spatial/CanvasLayer/PrayNode/CanvasLayer2/Inv/OptionButton".get_selected_id()
	prayerFkey = $"/root/Spatial/CanvasLayer/PrayNode/CanvasLayer2/PrayerIcon2/OptionButton2".get_selected_id()
	playerAnim = $"/root/Spatial/ViewportContainer2/Viewport2/AnimatedSprite3".animation
	maxHit = int($"/root/Spatial/CanvasLayer/MaxHit/Label2".text)
	if Globals.selectBP:
		$"/root/Spatial/CanvasLayer/Attack Speed/OptionButton2".selected = 0
		$"/root/Spatial/CanvasLayer/MaxHit/Label2".text = str(22)
	if Globals.selectBF:
		$"/root/Spatial/CanvasLayer/Attack Speed/OptionButton2".selected = 1
		$"/root/Spatial/CanvasLayer/MaxHit/Label2".text = str(39)
	if Globals.selectRCB:
		$"/root/Spatial/CanvasLayer/Attack Speed/OptionButton2".selected = 2
		$"/root/Spatial/CanvasLayer/MaxHit/Label2".text = str(32)
	if Globals.selectACB:
		$"/root/Spatial/CanvasLayer/Attack Speed/OptionButton2".selected = 3
		$"/root/Spatial/CanvasLayer/MaxHit/Label2".text = str(37)
	if Globals.selectTB:
		$"/root/Spatial/CanvasLayer/Attack Speed/OptionButton2".selected = 4
		$"/root/Spatial/CanvasLayer/MaxHit/Label2".text = str(62)
