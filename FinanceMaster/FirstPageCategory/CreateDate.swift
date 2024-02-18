import UIKit

class DateSettings {
    
    static func configurDate(datePicker: UIDatePicker) {
        
        datePicker.locale = .current
        datePicker.preferredDatePickerStyle = .compact
        datePicker.datePickerMode = .date
        datePicker.tintColor = .orange
        
        
        let calendarMin = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.year = 2024
        dateComponents.month = 1
        dateComponents.day = 1
        datePicker.minimumDate = calendarMin.date(from: dateComponents)
        
        datePicker.maximumDate = Date()
    }
}
