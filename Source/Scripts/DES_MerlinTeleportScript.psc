Scriptname DES_MerlinTeleportScript extends ObjectReference  

EVENT OnInit()

	Merlin.Resurrect()
	Utility.Wait(0.5)
	Merlin.MoveTo(self)
	(DES_MerlinTheCorgi as PetFramework_PetQuest).FollowPlayer(Merlin)
	Merlin.EvaluatePackage()
	Disable()
	Delete()

ENDEVENT

Actor Property Merlin Auto
Quest Property DES_MerlinTheCorgi Auto