//
//  ViewController.swift
//  FinanceMaster
//
//  Created by Олег Курбатов on 12.11.2023.
//

import UIKit

class MainPageViewController: UIViewController {
    
    
    // MARK: - outlets
    
    @IBOutlet weak var centralGrayView: UIView!
    @IBOutlet weak var centralButtonNumber: UITextField!
    @IBOutlet weak var setDate: UIDatePicker!
    @IBOutlet weak var createLimit: UIButton!
    @IBOutlet weak var addAndSaveExpenses: UIButton!
    
    // MARK: - create color
    let darkOrange = UIColor(red: 204/255, green: 102/255, blue: 0/255, alpha: 1.0)
    let darkBlue =  UIColor(red: 52/255, green: 73/255, blue: 94/255, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurMainView()
        dateCoinfigur()
        configButtonAddAndSave()
        
    }
    
    
    // MARK: - settings menu first page
    private func configurMainView() {
        let sizeForCentralGrayView: CGFloat = 30
        centralGrayView.layer.cornerRadius = sizeForCentralGrayView
        
        centralGrayView.backgroundColor = darkBlue
        centralButtonNumber.attributedPlaceholder = NSAttributedString(string: "0", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 189/255, green: 195/255, blue: 199/255, alpha: 1.0)]) // dark gray color
        createLimit.tintColor = darkOrange
    }
    
    
    // MARK: - settings save button
    
    private func configButtonAddAndSave() {
        
        guard let addButton = addAndSaveExpenses else {
            print("Помилка: кнопка 'addAndSaveExpenses' дорівнює nil")
            return
        }
        guard addButton.frame.height > 0 else {
            print("Помилка: висота кнопки 'addAndSaveExpenses' дорівнює 0")
            return
        }
        
        addAndSaveExpenses.layer.cornerRadius = addAndSaveExpenses.frame.height / 2
        addAndSaveExpenses.backgroundColor = UIColor(red: 176/255, green: 196/255, blue: 222/255, alpha: 1.0) // gray blue color
        
        let plusSymbol = UILabel()
          plusSymbol.text = "+"
          plusSymbol.textColor = .white
          plusSymbol.textAlignment = .center
          plusSymbol.font = UIFont.systemFont(ofSize: 26)
          plusSymbol.translatesAutoresizingMaskIntoConstraints = false
          addAndSaveExpenses.addSubview(plusSymbol)
          
          NSLayoutConstraint.activate([
              plusSymbol.centerXAnchor.constraint(equalTo: addAndSaveExpenses.centerXAnchor),
              plusSymbol.centerYAnchor.constraint(equalTo: addAndSaveExpenses.centerYAnchor)
          ])
        
    }
    
    // MARK: - configuration date
    
    private func dateCoinfigur() {
        DateSettings.configurDate(datePicker: setDate)
    }
    
    
}
