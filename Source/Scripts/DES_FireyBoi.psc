Scriptname DES_FireyBoi extends ObjectReference  

Event OnCombatStateChanged(Actor akTarget, int aeCombatState)
	if (aeCombatState == 0)
		;Debug.Trace("Merlin has left combat!")
		DES_Merlin.DispelSpell(flameCloak)
		DES_Merlin.DispelSpell(GhostAbilityFireNoAlpha)
	elseif (aeCombatState == 1)
		;Debug.Trace("Merlin has entered combat!")
		flameCloak.Cast(DES_Merlin)
		GhostAbilityFireNoAlpha.Cast(DES_Merlin)
	elseif (aeCombatState == 2)
		;Debug.Trace("Merlin is searching...")
    endIf
endEvent

Spell Property flameCloak Auto
Spell Property GhostAbilityFireNoAlpha Auto
Actor Property DES_Merlin auto