Scriptname OCR_PrivateCellsUtil extends Quest  

Actor Property PlayerRef Auto
ObjectReference Property OCR_XMarker_NPC_Camp  Auto
ObjectReference Property OCR_XMarker_NPC_Inn  Auto
ObjectReference Property OCR_XMarker_Player_Camp  Auto
ObjectReference Property OCR_XMarker_Player_Inn  Auto
ObjectReference Property OCR_XMarker_Return  Auto
Quest Property OCR_PrivateCells_EndVisit  Auto
Quest Property OCR_PrivateCells_FollowerAliases  Auto
Quest Property OCR_PrivateCells_LoverAliases  Auto
ReferenceAlias Property AliasFollower0  Auto
ReferenceAlias Property AliasFollower1  Auto
ReferenceAlias Property AliasFollower2  Auto
ReferenceAlias Property AliasFollower3  Auto
ReferenceAlias Property AliasFollower4  Auto
ReferenceAlias Property AliasFollower5  Auto
ReferenceAlias Property AliasFollower6  Auto
ReferenceAlias Property AliasFollower7  Auto
ReferenceAlias Property AliasFollower8  Auto
ReferenceAlias Property AliasFollower9  Auto
ReferenceAlias Property AliasLover0  Auto
ReferenceAlias Property AliasLover1  Auto
ReferenceAlias Property AliasLover2  Auto
ReferenceAlias Property AliasLover3  Auto
ReferenceAlias Property AliasLover4  Auto
ReferenceAlias Property AliasLover5  Auto
ReferenceAlias Property AliasLover6  Auto
ReferenceAlias Property AliasLover7  Auto
ReferenceAlias Property AliasLover8  Auto
ReferenceAlias Property AliasLover9  Auto
ReferenceAlias Property InvitedNPC  Auto
Message Property OCR_GoToPrivateCell_FollowersMSG  Auto
Message Property OCR_GoToPrivateCell_LoversMSG  Auto

function GoToPrivateCell_Camp(actor actor1)
    ;Move the return marker to the player
    OCR_XMarker_Return.MoveTo(playerref)
    ;Inviting followers functionality. Checks if the follower aliases have been filled.
    OCR_PrivateCells_FollowerAliases.Start()
    if AliasFollower0.GetActorReference()
        int iChoice0 = OCR_GoToPrivateCell_FollowersMSG.Show()
        if iChoice0 == 0 ;"Yes"
            ;Take followers with you
            AliasFollower0.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasFollower1.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasFollower2.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasFollower3.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasFollower4.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasFollower5.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasFollower6.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasFollower7.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasFollower8.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasFollower9.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
        endif
    Else
    	MiscUtil.PrintConsole("OCR_PrivateCellsUtil: no follower aliases were filled.")
    endif
    OCR_PrivateCells_LoverAliases.Start()
    InvitedNPC.ForceRefTo(actor1)
    ;Inviting additional lovers functionality. Checks if the additional lovers aliases have been filled.
    if AliasFollower0.GetActorReference()
        int iChoice0 = OCR_GoToPrivateCell_LoversMSG.Show()
        if iChoice0 == 0 ;"Yes"
            ;Take lovers with you
            AliasLover0.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasLover1.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasLover2.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasLover3.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasLover4.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasLover5.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasLover6.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasLover7.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasLover8.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
            AliasLover9.GetActorReference().MoveTo(OCR_XMarker_NPC_Camp)
        endif
    Else
    	MiscUtil.PrintConsole("OCR_PrivateCellsUtil: no additional lover aliases were filled.")
    endif
    ;Move invited NPC and player into the cell
    actor1.MoveTo(OCR_XMarker_NPC_Camp)
    playerref.MoveTo(OCR_XMarker_Player_Camp)
endfunction

function GoToPrivateCell_Inn(actor actor1)
endfunction

function GoToPrivateCell_Follow(actor actor1)
endfunction

function EndVisit()
	InvitedNPC.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasFollower0.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasFollower1.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasFollower2.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasFollower3.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasFollower4.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasFollower5.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasFollower6.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasFollower7.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasFollower8.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasFollower9.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasLover0.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasLover1.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasLover2.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasLover3.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasLover4.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasLover5.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasLover6.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasLover7.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasLover8.GetActorReference().MoveTo(OCR_XMarker_Return)
	AliasLover9.GetActorReference().MoveTo(OCR_XMarker_Return)
	OCR_XMarker_Return.MoveToMyEditorLocation()
	InvitedNPC.Clear()
	AliasFollower0.Clear()
	AliasFollower1.Clear()
	AliasFollower2.Clear()
	AliasFollower3.Clear()
	AliasFollower4.Clear()
	AliasFollower5.Clear()
	AliasFollower6.Clear()
	AliasFollower7.Clear()
	AliasFollower8.Clear()
	AliasFollower9.Clear()
	OCR_PrivateCells_FollowerAliases.Stop()
	AliasLover0.Clear()
	AliasLover1.Clear()
	AliasLover2.Clear()
	AliasLover3.Clear()
	AliasLover4.Clear()
	AliasLover5.Clear()
	AliasLover6.Clear()
	AliasLover7.Clear()
	AliasLover8.Clear()
	AliasLover9.Clear()
	OCR_PrivateCells_LoverAliases.Stop()
endfunction