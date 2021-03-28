Set Obj=CreateObject("WMPlayer.OCX.7")


Set CD=Obj.CDROMCollection

If CD.Count>=1 then

For i=0 to CD.Count-1

        CD.Item(i).eject

Next

End If
