Scriptname DES_MerlinTomeScript extends ObjectReference  

EVENT OnInit()

DES_MerlinIntro.SetStage(5)
Utility.Wait(1)
(MerlinForceGreet).ForceRefTo(Merlin)
Merlin.EvaluatePackage()

ENDEVENT

Quest Property DES_MerlinIntro auto
ReferenceAlias Property MerlinForceGreet Auto
Actor  Property Merlin auto