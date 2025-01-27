Function MyFunction(param1)
  On Error Resume Next
  If IsEmpty(param1) Then
    Err.Raise 13, , "Parameter 'param1' cannot be empty.  Please provide a value."
    Exit Function 'Exit the function immediately upon encountering the error.
  End If
  On Error GoTo 0
  ' ... rest of the function ...
End Function

' Example of calling MyFunction and checking for errors:
Call MyFunction(someVariable)
If Err.Number <> 0 Then
  MsgBox "An error occurred: " & Err.Description, vbCritical
  Err.Clear ' Clear the error object after handling it
End If