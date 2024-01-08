Scriptname DES_MerlinTeleportScript extends ObjectReference  

EVENT OnInit()

	Utility.Wait(0.5)
	Merlin.MoveTo(self)
	IF (Merlin.GetFactionRank(PetFramework_PetFollowingFaction) == 0)
		(DES_MerlinTheCorgi as PetFramework_PetQuest).FollowPlayer(Merlin)
	ENDIF
	Merlin.EvaluatePackage()
	Disable()
	Delete()

ENDEVENT

Actor Property Merlin Auto
Quest Property DES_MerlinTheCorgi Auto
Faction Property PetFramework_PetFollowingFaction auto