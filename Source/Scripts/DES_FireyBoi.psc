Scriptname DES_FireyBoi extends ObjectReference  

Event OnCombatStateChanged(Actor akTarget, int aeCombatState)
	if (aeCombatState == 0)
		;Debug.Trace("Merlin has left combat!")
		DES_Merlin.DispelSpell(flameCloak)
		DES_Merlin.unequipitem(DES_FireyMerlin)
		DES_Merlin.DispelSpell(frostCloak)
		DES_Merlin.unequipitem(DES_FrostyMerlin)
		DES_Merlin.DispelSpell(shockCloak)
		DES_Merlin.unequipitem(DES_ShockingMerlin)
	elseif (aeCombatState == 1)
		Random.SetValue(Utility.RandomInt(0, 3))
			;Debug.Trace("Merlin has entered combat!")
			IF Random.getvalue() == 1
				flameCloak.Cast(DES_Merlin)
				DES_Merlin.Equipitem(DES_FireyMerlin)
			ELSEIF Random.getvalue() == 2		
				frostCloak.Cast(DES_Merlin)
				DES_Merlin.Equipitem(DES_FrostyMerlin)	
			ELSEIF Random.getvalue() == 3
				shockCloak.Cast(DES_Merlin)
				DES_Merlin.Equipitem(DES_ShockingMerlin)
			ENDIF
	elseif (aeCombatState == 2)
		;Debug.Trace("Merlin is searching...")
    endIf
endEvent

Actor Property DES_Merlin auto
GlobalVariable property random auto
Spell Property flameCloak Auto
Spell Property frostCloak Auto
Spell Property shockCloak Auto
Armor Property DES_FireyMerlin auto
Armor Property DES_FrostyMerlin auto
Armor Property DES_ShockingMerlin auto
