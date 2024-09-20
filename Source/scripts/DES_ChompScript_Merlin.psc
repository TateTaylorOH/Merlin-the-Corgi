Scriptname DES_ChompScript_Merlin extends ObjectReference  

;-- Properties --------------------------------------

Sound Property DES_MerlinChompMarker  Auto
ObjectReference Property Merlin  Auto
Spell Property DES_MerlinBlessing auto
Message Property DES_MerlinBlessingMessage auto
Actor property PlayerRef auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	DES_MerlinChompMarker.play(Merlin)
	PlayerRef.DispelSpell(DES_MerlinBlessing)
	DES_MerlinBlessing.Cast(PlayerRef)
	DES_MerlinBlessingMessage.Show()
EndEvent