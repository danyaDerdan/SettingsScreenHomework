import UIKit

final class UserInfoEntry: UIStackView {
    
    private lazy var headingLabel = createHeadingLabel()
    private lazy var infoLabel = createInfoLabel()
    
    private func setupLayout() {
        backgroundColor = .white
        axis = .vertical
        [headingLabel, infoLabel].forEach { addArrangedSubview($0) }
    }
    
    func setup(heading: String, info: String) {
        headingLabel.text = heading
        infoLabel.text = info
        setupLayout()
    }
    
    
}
