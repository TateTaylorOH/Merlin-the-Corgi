Scriptname DES_MerlinSpellTomeScript extends ObjectReference  

EVENT OnInit()
	moveto(Merlin, 0, -50, 1)
	placeatme(DES_SummonExplosion)
	Utility.Wait(1)
	(MerlinForceGreet).ForceRefTo(Merlin)
	Utility.Wait(1)
	Merlin.EvaluatePackage()
ENDEVENT

Book Property DES_SpellTomeSummonMerlin auto
ReferenceAlias  Property MerlinForceGreet auto
Actor Property Merlin auto
explosion property DES_SummonExplosion auto