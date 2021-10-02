Scriptname DES_UnfireTheBoi extends ObjectReference  

Actor Property DES_Merlin auto ; This is Merlin.
Armor[] Property ElementalSkins auto
GlobalVariable Property DES_MerlinChooseSpell auto

Event OnCombatStateChanged(Actor akTarget, int aeCombatState)
	utility.wait(1)	
	if (aeCombatState == 0)
		DES_MerlinChooseSpell.SetValue(0)
		DES_Merlin.UnequipAll()
		DES_Merlin.RemoveItem(ElementalSkins)
		DES_Merlin.DispelAllSpells()
   	 endIf
endEvent

Event OnPlayerFastTravelEnd(float afTravelGameTimeHours)
	DES_Merlin.UnequipAll()
	DES_Merlin.removeitem(ElementalSkins)
ENDEVENT