import UIKit

extension MainPageViewController {
    
    // MARK: - create press textField button
    
    func createNumberPad() -> UIView {
        
        let numberPadView = UIView()
        numberPadView.backgroundColor = darkBlueColor
        
        let numberPad = UIStackView()
        numberPad.axis = .vertical
        numberPad.spacing = 5
        numberPad.alignment = .fill
        
        let doneButton = UIButton(type: .system)
        doneButton.setTitle("Готово", for: .normal)
        doneButton.tintColor = .white
        doneButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        doneButton.addTarget(self, action: #selector(doneButtonTapped), for: .touchUpInside)
        
        numberPad.addArrangedSubview(doneButton)
        
        for row in 0..<4 {
            let horizontalStack = UIStackView()
            horizontalStack.axis = .horizontal
            horizontalStack.distribution = .fillEqually
            horizontalStack.isLayoutMarginsRelativeArrangement = true
            horizontalStack.spacing = 10
            
            if row == 3 {
                // Add a single-digit button '0' and "C" in the last row
                let digitButton = UIButton(type: .system)
                digitButton.setTitle("0", for: .normal)
                digitButton.titleLabel?.font = UIFont.systemFont(ofSize: 35)
                digitButton.tintColor = darkOrangeColor
                digitButton.addTarget(self, action: #selector(digitButtonTapped(_:)), for: .touchUpInside)
                horizontalStack.addArrangedSubview(digitButton)
                
                let clearButton = UIButton(type: .system)
                clearButton.setTitle("C", for: .normal)
                clearButton.titleLabel?.font = UIFont.systemFont(ofSize: 35)
                clearButton.tintColor = darkOrangeColor
                clearButton.addTarget(self, action: #selector(clearButtonTapped), for: .touchUpInside)
                horizontalStack.addArrangedSubview(clearButton)
            } else {
                // Add three buttons for other rows
                for col in 0..<3 {
                    let digitButton = UIButton(type: .system)
                    let digit = row * 3 + col + 1
                    digitButton.setTitle("\(digit % 10)", for: .normal)
                    digitButton.titleLabel?.font = UIFont.systemFont(ofSize: 35)
                    digitButton.tintColor = darkOrangeColor
                    digitButton.addTarget(self, action: #selector(digitButtonTapped(_:)), for: .touchUpInside)
                    horizontalStack.addArrangedSubview(digitButton)
                }
            }
            
            numberPad.addArrangedSubview(horizontalStack)
        }
        
        numberPadView.addSubview(numberPad)
        numberPadView.translatesAutoresizingMaskIntoConstraints = false
        numberPad.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            numberPad.topAnchor.constraint(equalTo: numberPadView.topAnchor),
            numberPad.leadingAnchor.constraint(equalTo: numberPadView.leadingAnchor),
            numberPad.trailingAnchor.constraint(equalTo: numberPadView.trailingAnchor),
            numberPad.bottomAnchor.constraint(equalTo: numberPadView.bottomAnchor)
        ])
        
        return numberPadView
    }
    
    @objc func digitButtonTapped(_ sender: UIButton) {
         guard let digit = sender.currentTitle, !digit.isEmpty else { return }
        centralButtonNumber.text?.append(digit)
     }
     
     @objc func doneButtonTapped() {
         centralButtonNumber.resignFirstResponder()
     }
     
     @objc func clearButtonTapped() {
         // Delete number from text field
         guard let currentText = centralButtonNumber.text, !currentText.isEmpty else { return }
         centralButtonNumber.text?.removeLast()
     }
}
