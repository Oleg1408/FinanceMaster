//
//  SettingsTextFieldDelegate.swift
//  FinanceMaster
//
//  Created by Олег Курбатов on 17.12.2023.
//

import Foundation
import UIKit

extension MainPageViewController: UITextFieldDelegate {
    
    // MARK: - limitation text field
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        centralButtonNumber.delegate = self
        centralButtonNumber.keyboardType = .numberPad
        centralButtonNumber.inputView = createNumberPad()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: characterSet)
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if textField.text?.hasPrefix("0") == true {
            textField.text = ""
        } 
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
}


