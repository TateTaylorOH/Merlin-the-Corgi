Scriptname DES_MerlinTeleportScript extends ObjectReference  

EVENT OnInit()

	Merlin.MoveTo(self)
	(DES_MerlintheCorgi as DES_MerlinFollowerFramework).SetFollower(Merlin)
	Merlin.EvaluatePackage()
	Disable()
	Delete()

ENDEVENT

Actor Property Merlin Auto
Quest Property DES_MerlintheCorgi auto