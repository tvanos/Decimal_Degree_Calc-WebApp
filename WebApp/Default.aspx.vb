'----------------------------------------------------------------------- 
'Title: GISC9304-Assignment 3 – ASP .NET Web App Development
' Author: Travis Vanos
' Date: 12/09/2015 
' Purpose: ASP .NET Web App Development
' ----------------------------------------------------------------------

Public Class _Default
    Inherits Page

    'Setting Attributes in form controls on page load
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        'Calculators and button functions hidden under Panels
        Panel1.Visible = False
        Panel2.Visible = False
        ResultLabel.Visible = False
        ResultLabel0.Visible = False
        Label8.Visible = False
        Label9.Visible = False
    End Sub

    'Button for Converting Degree, Minute, Second to Decimal 
    Private Sub DegreeMinutetoDegree_Click(sender As Object, e As EventArgs) Handles DegreeMinutetoDegree.Click
        Panel1.Visible = True
        'Sanitizing of previous results
        DegreeMinuteResultLat.Text = String.Empty
        DegreeMinuteResultLong.Text = String.Empty
        ResultLabel0.Text = String.Empty
        ResultLabel.Text = String.Empty
    End Sub

    'Button for converting Decimal Degree to Degree, Minute, Second 
    Private Sub DegreetoDegreeMinute_Click(sender As Object, e As EventArgs) Handles DegreetoDegreeMinute.Click
        Panel2.Visible = True
        'Sanitizing of previous results
        DegreeMinuteResultLat.Text = String.Empty
        DegreeMinuteResultLong.Text = String.Empty
        ResultLabel0.Text = String.Empty
        ResultLabel.Text = String.Empty


    End Sub


    'Calculate button for calculating Degree Minute Second to Decimal
    Protected Sub CalculateButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles CalculateButton.Click
        'Ensure Panel is visible due to weird attribute quirk on page reload 
        Panel1.Visible = True
        ' Will only calculate and convert if value is present in text boxes
        If ValueBox1.Text.Length > 0 AndAlso ValueBox2.Text.Length > 0 AndAlso ValueBox2.Text.Length AndAlso ValueBox3.Text.Length > 0 AndAlso ValueBox4.Text.Length > 0 AndAlso ValueBox5.Text.Length > 0 AndAlso ValueBox6.Text.Length > 0 Then

            ' Variable declaration 
            Dim LongResult As Double = 0

            Dim LatResult As Double = 0

            Dim value1 As Double = Convert.ToDouble(ValueBox1.Text)

            Dim value2 As Double = Convert.ToDouble(ValueBox2.Text)

            Dim value3 As Double = Convert.ToDouble(ValueBox3.Text)

            Dim value4 As Double = Convert.ToDouble(ValueBox4.Text)

            Dim value5 As Double = Convert.ToDouble(ValueBox5.Text)

            Dim value6 As Double = Convert.ToDouble(ValueBox6.Text)


            'Labels for results are then shown (Lat, Long)
            Label8.Visible = True
            Label9.Visible = True

            ' Result labels are shown 
            ResultLabel0.Visible = True
            ResultLabel.Visible = True

            'Calculate Latitude D,M,S
            LatResult = value1 + (value2 / 60) + (value3 / 3600)
            'rounding to 6 decimal places 
            LatResult = Math.Round(LatResult, 6)
            ResultLabel0.Text = LatResult

            'Calculate Longitude D,M,S
            LongResult = value4 + (value5 / 60) + (value6 / 3600)
            'rounding to 6 decimal places 
            LongResult = Math.Round(LongResult, 6)
            ResultLabel.Text = LongResult


        Else
            ' Catch all case for labels staying empty 
            ResultLabel0.Text = String.Empty
            ResultLabel.Text = String.Empty
            ResultLabel.Visible = False

        End If

    End Sub

    'Sub for calculating D,M,S to Decimal Degrees
    Private Sub CalculateButtonDegreeMinutetoDecimal_Click(sender As Object, e As EventArgs) Handles CalculateButtonDegreeMinutetoDecimal.Click
        'Ensure Panel is visible due to weird attribute quirk on page reload 
        Panel2.Visible = True
        ' Will only calculate and convert if value is present in text boxes
        If ValueBox7.Text.Length > 0 AndAlso ValueBox10.Text.Length > 0 Then

            Dim value1 As Double = Convert.ToDouble(ValueBox7.Text)

            Dim value2 As Double = Convert.ToDouble(ValueBox10.Text)

            Dim LongResult As String = ""

            Dim LatResult As String = ""
            Dim intDegreeResultLat As Integer
            Dim intMinuteResultLat As Integer
            Dim dblSecondResultLat As Double
            Dim intDegreeResultLong As Integer
            Dim intMinuteResultLong As Integer
            Dim dblSecondResultLong As Double

            'Results labels visible
            Label8.Visible = True
            Label9.Visible = True

            'Calculated Labels visible 
            DegreeMinuteResultLat.Visible = True
            DegreeMinuteResultLong.Visible = True

            'Calculations for decimal conversion and string concatination 
            'Truncating to drop decimal places in double 
            intDegreeResultLat = Math.Truncate(value1)
            'Minute calculation with truncated value 
            intMinuteResultLat = Math.Truncate((value1 - intDegreeResultLat) * 60)
            'Second Calculation rounded to 2 decimal places 
            dblSecondResultLat = ((value1 - intDegreeResultLat - intMinuteResultLat / 60) * 3600)

            'If statement for north or south long/lat
            If value1 > 0 Then
                LatResult = CStr(intDegreeResultLat & "° " & intMinuteResultLat & "' " & Math.Round(dblSecondResultLat, 2) & Chr(34) & " North")
            ElseIf value1 < 0 Then
                LatResult = CStr(intDegreeResultLat & "° -" & intMinuteResultLat & "' -" & Math.Round(dblSecondResultLat, 2) & Chr(34) & " South")
            End If

            'Calculations for decimal conversion and string concatination 
            'Truncating to drop decimal places in doubles
            intDegreeResultLong = Math.Truncate(value2)
            'Minute calculation with truncated value 
            intMinuteResultLong = Math.Truncate((value2 - intDegreeResultLong) * 60)
            'Second Calculation rounded to 2 decimal places 
            dblSecondResultLong = Math.Round((value2 - intDegreeResultLong - intMinuteResultLong / 60) * 3600)

            'If statement for north or south long/lat
            If value2 > 0 Then
                LongResult = CStr(intDegreeResultLong & "° " & intMinuteResultLong & "' " & Math.Round(dblSecondResultLong, 2) & Chr(34) & " North")
                ElseIf 
                LongResult = CStr(intDegreeResultLong & "° -" & intMinuteResultLong & "' -" & Math.Round(dblSecondResultLong, 2) & Chr(34) & " South")
            End If

            'Display of Results
            DegreeMinuteResultLat.Text = LatResult
            DegreeMinuteResultLong.Text = LongResult
        Else

            DegreeMinuteResultLat.Text = String.Empty
            DegreeMinuteResultLong.Text = String.Empty
        End If

    End Sub

    'clear button for Panel1
    Private Sub ClearButton_Click(sender As Object, e As EventArgs) Handles ClearButton.Click
        Panel1.Visible = True
        ValueBox1.Text = ""
        ValueBox2.Text = ""
        ValueBox3.Text = ""
        ValueBox4.Text = ""
        ValueBox5.Text = ""
        ValueBox6.Text = ""
        ResultLabel0.Text = String.Empty
        ResultLabel.Text = String.Empty

    End Sub

    'CLear Button for Panel2 
    Private Sub ClearButton0_Click(sender As Object, e As EventArgs) Handles ClearButton0.Click
        Panel2.Visible = True
        ValueBox7.Text = ""
        ValueBox10.Text = ""
        DegreeMinuteResultLat.Text = String.Empty
        DegreeMinuteResultLong.Text = String.Empty
    End Sub


    



End Class