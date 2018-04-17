Attribute VB_Name = "Module1"
Sub copyProduct()
    Dim flor, cali, tex, ari, i, j As Integer
    Dim f, c, t, a As String
    f = "florida"
    c = "california"
    t = "texas"
    a = "arizona"
  
    j = 1
    
        For i = 11 To 38
            With Worksheets("Sheet1")
            flor = .Cells(i, 2).Value
            cali = .Cells(i, 3).Value
            tex = .Cells(i, 4).Value
            ari = .Cells(i, 5).Value
            End With
            
            If ari = "    na" Then
                ari = ""
            End If
            If tex < 5 Then
                tex = ""
            End If
            
            
            With Worksheets("Sheet2")
            .Cells(j, 2).Value = f
            .Cells(j, 3).Value = flor
            j = j + 1
            .Cells(j, 2).Value = c
            .Cells(j, 3).Value = cali
            j = j + 1
            .Cells(j, 2).Value = t
            .Cells(j, 3).Value = tex
            j = j + 1
            .Cells(j, 2).Value = a
            .Cells(j, 3).Value = ari
            j = j + 1
            End With
        Next i
End Sub

Sub copyAcreage()
Dim fA, fY, cA, cY, tA, tY, aA, aY As String
Dim i, j As Integer

j = 1
    For i = 6 To 33
        With Worksheets("Sheet4")
            fA = .Cells(i, 2).Value
            fY = .Cells(i, 3).Value
            cA = .Cells(i, 4).Value
            cY = .Cells(i, 5).Value
            tA = .Cells(i, 6).Value
            tY = .Cells(i, 7).Value
            aA = .Cells(i, 8).Text
            aY = .Cells(i, 9).Text
        End With
        
         If aA = "     na" Then
                aA = ""
            End If
        If aY = "     na" Then
                aY = ""
        End If
        
        
        With Worksheets("Sheet2")
        .Cells(j, 4).Value = fA
        .Cells(j, 5).Value = fY
        j = j + 1
        .Cells(j, 4).Value = cA
        .Cells(j, 5).Value = cY
        j = j + 1
        .Cells(j, 4).Value = tA
        .Cells(j, 5).Value = tY
        j = j + 1
        .Cells(j, 4).Value = aA
        .Cells(j, 5).Value = aY
        j = j + 1
        End With
    Next i

End Sub
