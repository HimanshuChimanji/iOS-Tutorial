//
//  AutoCompleteTextFieldViewController.swift
//  iOS Tutorial
//
//  Created by Himanshu Chimanji on 09/06/18.
//  Copyright © 2018 Talent4assure. All rights reserved.
//

import UIKit

class AutoCompleteTextFieldViewController: UIViewController , UITextFieldDelegate {

    
    @IBOutlet weak var autoCompleteTf: UITextField!
    
    var autoCompletionPossibilities = ["Apple", "Appp", "appll"]
    var autoCompleteCharacterCount = 0
    var timer = Timer()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool { //1
        var subString = (textField.text!.capitalized as NSString).replacingCharacters(in: range, with: string) // 2
        subString = formatSubstring(subString: subString)
        
        if subString.count == 0 { // 3 when a user clears the textField
            resetValues()
        } else {
            searchAutocompleteEntriesWIthSubstring(substring: subString) //4
        }
        return true
    }
    func formatSubstring(subString: String) -> String {
        let formatted = String(subString.dropLast(autoCompleteCharacterCount)).lowercased().capitalized //5
        return formatted
    }
    
    
    
    func resetValues() {
        autoCompleteCharacterCount = 0
        autoCompleteTf.text = ""
    }
    
    func searchAutocompleteEntriesWIthSubstring(substring: String) {
    let userQuery = substring
    let suggestions = getAutocompleteSuggestions(userText: substring) //1
    
    if suggestions.count > 0 {
    timer = .scheduledTimer(withTimeInterval: 0.01, repeats: false, block: { (timer) in //2
    let autocompleteResult = self.formatAutocompleteResult(substring: substring, possibleMatches: suggestions) // 3
    self.putColourFormattedTextInTextField(autocompleteResult: autocompleteResult, userQuery : userQuery) //4
    self.moveCaretToEndOfUserQueryPosition(userQuery: userQuery) //5
    })
    } else {
    timer = .scheduledTimer(withTimeInterval: 0.01, repeats: false, block: { (timer) in //7
    self.autoCompleteTf.text = substring
    })
    autoCompleteCharacterCount = 0
    }
    }
    func getAutocompleteSuggestions(userText: String) -> [String]{
        var possibleMatches: [String] = []
        for item in autoCompletionPossibilities { //2
            let myString:NSString! = item as NSString
            let substringRange :NSRange! = myString.range(of: userText)
            
            if (substringRange.location == 0)
            {
                possibleMatches.append(item)
            }
        }
        return possibleMatches
    }
    
    func putColourFormattedTextInTextField(autocompleteResult: String, userQuery : String) {
        let colouredString: NSMutableAttributedString = NSMutableAttributedString(string: userQuery + autocompleteResult)
        colouredString.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor.green, range: NSRange(location: userQuery.count,length:autocompleteResult.count))
        self.autoCompleteTf.attributedText = colouredString
    }
    func moveCaretToEndOfUserQueryPosition(userQuery : String) {
        if let newPosition = self.autoCompleteTf.position(from: self.autoCompleteTf.beginningOfDocument, offset: userQuery.count) {
            self.autoCompleteTf.selectedTextRange = self.autoCompleteTf.textRange(from: newPosition, to: newPosition)
        }
        let selectedRange: UITextRange? = autoCompleteTf.selectedTextRange
        autoCompleteTf.offset(from: autoCompleteTf.beginningOfDocument, to: (selectedRange?.start)!)
    }
    func formatAutocompleteResult(substring: String, possibleMatches: [String]) -> String {
        var autoCompleteResult = possibleMatches[0]
        autoCompleteResult.removeSubrange(autoCompleteResult.startIndex..<autoCompleteResult.index(autoCompleteResult.startIndex, offsetBy: substring.count))
        autoCompleteCharacterCount = autoCompleteResult.count
        return autoCompleteResult
    }

}
