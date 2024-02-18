//
//  СonfigButtonAddAndSave.swift
//  FinanceMaster
//
//  Created by Олег Курбатов on 18.02.2024.
//

import UIKit

extension UIButton {
    
    // MARK: - settings save button
    
    func configButtonAddandSave(cornerRadius: CGFloat, backgroundColor: UIColor, symbolText: String, symbolColor: UIColor, symbolFontSize: CGFloat) {
        
        self.layer.cornerRadius = cornerRadius
        self.backgroundColor = backgroundColor
        
        let symbolPlus = UILabel()
        symbolPlus.text = symbolText
        symbolPlus.textColor = symbolColor
        symbolPlus.textAlignment = .center
        symbolPlus.font = UIFont.systemFont(ofSize: symbolFontSize)
        symbolPlus.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(symbolPlus)
        
        NSLayoutConstraint.activate([
            symbolPlus.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            symbolPlus.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}

