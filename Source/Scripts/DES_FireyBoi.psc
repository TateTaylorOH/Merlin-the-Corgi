Scriptname DES_FireyBoi extends ObjectReference  

Actor Property DES_Merlin auto ; This is Merlin.
Armor[] Property ElementalSkins auto
Formlist Property DES_FrostResistantRaces Auto
Formlist Property DES_FireResistantRaces Auto
GlobalVariable property DES_MerlinChooseSpell auto ; This variable determines which spell Merlin will cast.
Race akTargetRace
Spell[] Property CloakSpells auto

Event OnCombatStateChanged(Actor akTarget, int aeCombatState)
	utility.wait(1)
	if (aeCombatState == 1)
		DES_MerlinChooseSpell.SetValue(Utility.RandomInt(1, 3))
		IF DES_FrostResistantRaces.HasForm(akTarget.GetRace())
			DES_MerlinChooseSpell.SetValue(1)
		ELSEIF DES_FrostResistantRaces.HasForm(akTarget.GetRace())
			DES_MerlinChooseSpell.SetValue(2)
		ENDIF
		IF DES_MerlinChooseSpell.getvalue() == 1 ; Merlin is firey!
			CloakSpells[0].Cast(DES_Merlin)
			DES_Merlin.EquipItem(ElementalSkins[0])
		ELSEIF DES_MerlinChooseSpell.getvalue() == 2 ; Merlin is frosty!		
			CloakSpells[1].Cast(DES_Merlin)
			DES_Merlin.EquipItem(ElementalSkins[1])	
		ELSEIF DES_MerlinChooseSpell.getvalue() == 3 ; Merlin is shocking!
			CloakSpells[2].Cast(DES_Merlin)
			DES_Merlin.EquipItem(ElementalSkins[2])
		ENDIF
    endIf
endEvent