import UIKit

extension MainPageViewController: UITextFieldDelegate {
    
    // MARK: - limitation text field
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        guard textField == centralButtonNumber else {
             print("Помилка: Помилкове текстове поле")
             return
         }
        
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
