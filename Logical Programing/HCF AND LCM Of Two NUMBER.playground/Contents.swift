import UIKit

// L.C.M of Two Number

// Entered Two Number Here
var LCMfirstNumber: Int = 4
var LCMsecondNumber:Int = 60

print("LCM OF \(LCMfirstNumber) AND \(LCMsecondNumber) : ")

func LCMtwoNumber(LCMnumOne: Int , LCMnumTwo: Int){
    let LCMsomeTwoNumber = LCMnumOne*LCMnumTwo
    for LCMsomeOneNumber in 1...LCMsomeTwoNumber
    {
       if LCMsomeOneNumber%LCMnumOne == 0 && LCMsomeOneNumber%LCMnumTwo == 0
       {
        print(LCMsomeOneNumber)
        break
        }

    }


}
LCMtwoNumber(LCMnumOne: LCMfirstNumber, LCMnumTwo: LCMsecondNumber)


//************************************************************


// F.C.M of Two Number

// Entered Two Number Here
var FCMfirstNumber: Int = 4
var FCMsecondNumber:Int = 6

print("\nFCM OF \(FCMfirstNumber) AND \(FCMsecondNumber) : ")


func FCMtwoNumber(FCMnumOne: Int , FCMnumTwo: Int){
    var FCMsomeTwoNumber = Int()
    if FCMnumOne >= FCMnumTwo
    {
        FCMsomeTwoNumber = FCMnumOne
    }
    else
    {
        FCMsomeTwoNumber = FCMnumTwo
    }
    
    for FCMsomeOneNumber in (1...FCMsomeTwoNumber).reversed()
    {
        
        
        if FCMnumOne%FCMsomeOneNumber == 0 && FCMnumTwo%FCMsomeOneNumber == 0
        {
            print(FCMsomeOneNumber)
            break
        }
        
    }
    
    
}
FCMtwoNumber(FCMnumOne: FCMfirstNumber, FCMnumTwo: FCMsecondNumber)
