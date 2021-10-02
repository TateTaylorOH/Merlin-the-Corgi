Scriptname DES_MerlinTeleportScript extends ObjectReference  

EVENT OnInit()

	Utility.Wait(0.5)
	Merlin.MoveTo(self)
	(DES_MerlintheCorgi as DES_MerlinFollowerFramework).SetFollower(Merlin)
	(DES_MerlintheCorgi as  DES_MerlinFollowerFramework).FollowerFollow()
	Merlin.EvaluatePackage()
	Disable()
	Delete()

ENDEVENT

Actor Property Merlin Auto
Quest Property DES_MerlintheCorgi auto