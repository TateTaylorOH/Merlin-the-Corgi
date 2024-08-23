scriptName DES_MerlinCarnageCleanup extends ReferenceAlias

;-- Propeties ---------------------------------------

quest property DES_MerlinIntro auto
objectreference property DES_DisableVigilants auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Auto State Waiting
    ;do nothing
EndState

State BoughtDog
    Event OnLocationChange(Location akOldLoc, Location akNewLoc)
	utility.Wait(600.0)
	DES_DisableVigilants.Disable()
	DES_MerlinIntro.SetStage(255)
    EndEvent
EndState