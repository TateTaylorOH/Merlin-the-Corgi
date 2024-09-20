Scriptname DES_JSCompatibilityScript_Merlin extends Quest  

;-- Propeties ---------------------------------------

ActorBase Property DES_Merlin  Auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Function IntJaySerpaCompatibility()
;Debug.Notification("IntJaySerpaCompatibility has fired!")
FormList DogFormlist = Game.GetFormFromFile(0x013554F, "ImmersiveInteractions.esp") As FormList
    if (DogFormlist && !DogFormlist.hasForm(DES_Merlin))
		DogFormlist.AddForm(DES_Merlin)
		;Debug.Notification("Merlin has been added to the formlist!")
    endif
EndFunction

Event OnInit()
	;Debug.Notification("OnInit has fired!")
	IntJaySerpaCompatibility()
EndEvent

Event OnPlayerLoadGame()
	;Debug.Notification("OnPlayerLoadGame has fired!")
	IntJaySerpaCompatibility()
EndEvent