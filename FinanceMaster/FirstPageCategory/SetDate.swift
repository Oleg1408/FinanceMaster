//
//  SetDate.swift
//  FinanceMaster
//
//  Created by Олег Курбатов on 07.02.2024.
//

import Foundation
import UIKit


extension MainPageViewController {
    
    func settingsDate() {
        
        let createDate = setDate
        createDate?.locale = .current
        createDate?.preferredDatePickerStyle = .compact
        createDate?.datePickerMode = .date
        createDate?.tintColor = .red
        createDate?.minimumDate = Date(timeIntervalSinceNow: 1960)
        
        let calendarMin = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.year = 2022
        dateComponents.month = 1
        dateComponents.day = 1
        createDate?.minimumDate = calendarMin.date(from: dateComponents)
        
        createDate?.maximumDate = Date()
    }
    
    
}
