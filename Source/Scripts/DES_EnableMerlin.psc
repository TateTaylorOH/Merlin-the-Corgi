Scriptname DES_EnableMerlin extends ObjectReference  

EVENT onTriggerEnter(objectReference triggerRef)

IF TriggerRef == PlayerRef

	Merlin.Enable()
	Merlin.PlaceAtMe(DES_SummonExplosion)
	Disable()
	Delete()

ENDIF

ENDEVENT

Actor Property Merlin  Auto  

Explosion Property DES_SummonExplosion  Auto  

Actor Property PlayerRef auto