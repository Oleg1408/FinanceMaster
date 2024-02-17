//
//  ViewController.swift
//  FinanceMaster
//
//  Created by Олег Курбатов on 12.11.2023.
//

import UIKit

class MainPageViewController: UIViewController {
    
    
    // MARK: - Outlets
    
    @IBOutlet weak var centralGrayView: UIView!
    @IBOutlet weak var centralButtonNumber: UITextField!
    @IBOutlet weak var setDate: UIDatePicker!
    @IBOutlet weak var createLimit: UIButton!
    @IBOutlet weak var categoryTextLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        configurMainView()
        dateCoinfigur()
        
    }
    
    
    
    // MARK: - settings menu first page
    private func configurMainView() {
        let sizeForCentralGrayView: CGFloat = 30
        centralGrayView.layer.cornerRadius = sizeForCentralGrayView
        
        
        centralGrayView.backgroundColor = UIColor(red: 52/255, green: 73/255, blue: 94/255, alpha: 1.0)
        centralButtonNumber.attributedPlaceholder = NSAttributedString(string: "0", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 189/255, green: 195/255, blue: 199/255, alpha: 1.0)])
       
        createLimit.tintColor = UIColor(red: 204/255, green: 102/255, blue: 0/255, alpha: 1.0)
        
        categoryTextLable.tintColor = UIColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1.0)

    }
    
    // MARK: - configuration date
    
    private func dateCoinfigur() {
        DateSettings.configurDate(datePicker: setDate)
    }
    

}
