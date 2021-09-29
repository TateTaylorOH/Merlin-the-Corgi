Scriptname DES_FireyBoi extends ObjectReference  

Event OnCombatStateChanged(Actor akTarget, int aeCombatState)
	if (aeCombatState == 0)
		;Debug.Trace("Merlin has left combat!")
		DES_Merlin.DispelSpell(flameCloak)
	elseif (aeCombatState == 1)
		;Debug.Trace("Merlin has entered combat!")
		flameCloak.Cast(DES_Merlin)
	elseif (aeCombatState == 2)
		;Debug.Trace("Merlin is searching...")
    endIf
endEvent

Spell Property flameCloak Auto
Actor Property DES_Merlin auto