import UIKit

extension MainPageViewController {
   
    // MARK: - settings menu first page
    func configurMainView() {
        let sizeForCentralGrayView: CGFloat = 30
        centralGrayView.layer.cornerRadius = sizeForCentralGrayView
        
        centralGrayView.backgroundColor = darkBlueColor
        centralButtonNumber.attributedPlaceholder = NSAttributedString(string: "0", attributes: [NSAttributedString.Key.foregroundColor: darkGrayColor])
        createLimit.tintColor = darkOrangeColor
    }
}
