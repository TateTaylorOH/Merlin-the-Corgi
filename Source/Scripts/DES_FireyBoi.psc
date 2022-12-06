Scriptname DES_FireyBoi extends Actor  

Armor[] Property ElementalSkins auto
Spell[] Property CloakSpells auto
Formlist Property DES_ElementalSkins Auto

EVENT OnCombatStateChanged(Actor akTarget, int aeCombatState)

	IF (aeCombatState == 0)
		Self.UnequipItem(DES_ElementalSkins)
		Self.RemoveItem(DES_ElementalSkins)
		Self.DispelAllSpells()
	ELSEIF(aeCombatState == 1)
		Self.StartCloak(akTarget)
	ENDIF
	
ENDEVENT

EVENT OnLoad()

	Self.UnequipItem(DES_ElementalSkins)
	Self.RemoveItem(DES_ElementalSkins)
	Self.DispelAllSpells()
	
ENDEVENT

Function StartCloak(Actor akTarget)
    float fireRes = akTarget.GetActorValue("FireResist")
    float frostRes = akTarget.GetActorValue("FrostResist")
    float shockRes = akTarget.GetActorValue("ElectricResist")
        
    IF fireRes >= 100.0 && frostRes >= 100.0 && shockRes >= 100.0
        return
    ENDIF

    int minElement = 0
    int elementRange = 2

    IF fireRes > frostRes || fireRes > shockRes
        elementRange -= 1
        minElement = 1               ; Frost-Shock
    ENDIF
    IF frostRes > fireRes || frostRes > shockRes
        elementRange -= 1
        minElement = 2               ; Shock-Fire
    ENDIF
    IF shockRes > fireRes || shockRes > frostRes
        elementRange -= 1
        minElement = minElement % 2  ; Not Shock
    ENDIF

    int element = Utility.RandomInt(minElement, minElement + elementRange) % 3

	CloakSpells[element].Cast(self)
	EquipItem(ElementalSkins[element])
EndFunction