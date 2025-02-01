import UIKit

final class LabelCell: UITableViewCell {

    private lazy var label: UILabel = {
        let label = UILabel()
        label.font = Constants.titleFont
        return label
    }()
    
    public func configure(with text: String?) {
        label.text = text
        setupLabel()
    }
    
    private func setupLabel() {
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Constants.leadingInset),
            label.centerYAnchor.constraint(equalTo: centerYAnchor)
            ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        label.text = nil
    }

}
