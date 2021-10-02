Scriptname DES_MerlinSpellTomeScript extends ObjectReference  

EVENT OnInit()
	moveto(PlayerRef, 50, 50, 1)
	placeatme(DES_SummonExplosion)
	Utility.Wait(4)
	(MerlinForceGreet).ForceRefTo(Merlin)
	Utility.Wait(1)
	Merlin.EvaluatePackage()
ENDEVENT

Book Property DES_SpellTomeSummonMerlin auto
ReferenceAlias  Property MerlinForceGreet auto
Actor Property Merlin auto
explosion property DES_SummonExplosion auto
Actor Property PlayerRef auto