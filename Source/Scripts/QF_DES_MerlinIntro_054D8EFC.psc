;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 7
Scriptname QF_DES_MerlinIntro_054D8EFC Extends Quest Hidden

;BEGIN ALIAS PROPERTY CarnageMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CarnageMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MerlinNameless
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MerlinNameless Auto
;END ALIAS PROPERTY

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
spelltomeref.placeatme(DES_SummonExplosion)
Utility.Wait(0.5)
spelltomeref.enable()
scrollref.enable()
Utility.Wait(3)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property Merlin  Auto  

ObjectReference Property spelltomeref  Auto  

ObjectReference Property scrollref  Auto  



Explosion Property DES_SummonExplosion  Auto  
