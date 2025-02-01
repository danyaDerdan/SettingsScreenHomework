import UIKit

private enum UserInfo {
    static let name = "Danil Sigma"
    static let age = "22"
}

final class InfoCell: UITableViewCell {

    private lazy var horizontalStackView = createStack(axis: .horizontal)
    private lazy var verticalStackView = createStack(axis: .vertical)
    
    private lazy var nameLabel = createLabel(text: UserInfo.name, font: .systemFont(ofSize: 17, weight: .medium))
    private lazy var ageLabel = createLabel(text: UserInfo.age, font: .systemFont(ofSize: 13, weight: .light))
    
    private lazy var personPic = createImageView(name: "person.circle.fill")
    
    public func setup() {
        backgroundColor = .lightGray.withAlphaComponent(0)
        verticalStackView.addArrangedSubview(nameLabel)
        verticalStackView.addArrangedSubview(ageLabel)
        horizontalStackView.addArrangedSubview(verticalStackView)
        horizontalStackView.addArrangedSubview(personPic)
        addSubview(horizontalStackView)
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            horizontalStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            horizontalStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            horizontalStackView.topAnchor.constraint(equalTo: topAnchor),
            horizontalStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    
}

private extension InfoCell {
    
    func createStack(axis: NSLayoutConstraint.Axis) -> UIStackView {
        let stack = UIStackView()
        stack.distribution = .fillProportionally
        stack.axis = axis
        return stack
    }
    
    func createLabel(text: String, font: UIFont) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = font
        return label
    }
    
    func createImageView(name: String) -> UIImageView {
        let imageView = UIImageView(image: UIImage(systemName: name))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }
}
