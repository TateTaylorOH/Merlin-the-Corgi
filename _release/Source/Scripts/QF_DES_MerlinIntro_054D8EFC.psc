;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname QF_DES_MerlinIntro_054D8EFC Extends Quest Hidden

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MerlinNameless
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MerlinNameless Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
Alias_MerlinNameless.GetActorReference().SetFactionRank(PetFramework_PetFaction, 1)
DES_MerlinTheCorgi.Start()
(DES_MerlinTheCorgi as PetFramework_PetQuest).FollowPlayer(Alias_MerlinNameless)
Alias_MerlinNameless.trytoEvaluatePackage()
CleanupScript.GotoState("BoughtDog")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
IdleMarker.Disable()
IdleMarker.Delete()
Utility.Wait(0.5)
spelltomeref.placeatme(DES_SummonExplosion)
Utility.Wait(0.5)
spelltomeref.enable()
scrollref.enable()
Utility.Wait(3)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;Alias_MerlinNameless.Clear()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property Merlin  Auto  

ObjectReference Property spelltomeref  Auto  

ObjectReference Property scrollref  Auto  

DES_MerlinCarnageCleanup Property CleanupScript  Auto

Explosion Property DES_SummonExplosion  Auto  

ObjectReference Property IdleMarker  Auto  

Quest Property DES_MerlintheCorgi  Auto  

Faction Property PetFramework_PetFaction  Auto  
