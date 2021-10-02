Scriptname DES_MerlinSpellTomeScript extends ObjectReference  

EVENT OnInit()
	float A = Merlin.GetAngleZ()
	Float YDist = Math.Sin(A)
	Float XDist = math.Cos(A)
	YDist *= 100
	XDist *= 100
	moveto(Merlin, YDist, XDist, 0, False)
	placeatme(DES_SummonExplosion)
	utility.wait(0.5)
	placeatme(DES_SummonMerlinScroll)
	Utility.Wait(3)
	(MerlinForceGreet).ForceRefTo(Merlin)
	Utility.Wait(1)
	Merlin.EvaluatePackage()
ENDEVENT

Book Property DES_SpellTomeSummonMerlin auto
ReferenceAlias  Property MerlinForceGreet auto
Actor Property Merlin auto
explosion property DES_SummonExplosion auto
Actor Property PlayerRef auto
Scroll Property DES_SummonMerlinScroll auto