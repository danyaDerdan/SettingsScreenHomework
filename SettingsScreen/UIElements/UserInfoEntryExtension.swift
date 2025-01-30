import UIKit

extension UserInfoEntry {
    
    func createHeadingLabel() -> UILabel {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .medium)
        label.textColor = .gray
        return label
    }
    
    func createInfoLabel() -> UILabel {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17, weight: .medium)
        return label
    }
}
