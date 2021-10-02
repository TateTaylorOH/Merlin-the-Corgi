Scriptname DES_RemoveMerlinSpellonFastTravel extends ReferenceAlias  

EVENT OnPlayerFastTravelEnd(float afTravelGameTimeHours)

	DES_Merlin.UnequipAll()
	DES_Merlin.RemoveAllItems()
	
ENDEVENT

Actor Property DES_Merlin auto