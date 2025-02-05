import UIKit

final class FamilyMemberCell: UITableViewCell {
    
    private var familyMember: FamilyMember?
    
    private lazy var horizontalStackView = createStack(axis: .horizontal)
    private lazy var verticalStackView = createStack(axis: .vertical)
    
    private lazy var nameLabel = createLabel(text: familyMember?.name ?? "", font: Constants.infoFont)
    private lazy var ageLabel = createLabel(text: familyMember?.birthdate ?? "", font: Constants.infoFont)
    private lazy var roleLabel = createLabel(text: familyMember?.role ?? "", font: Constants.titleFont)
    
    public func configure(with familyMember: FamilyMember) {
        self.familyMember = familyMember
        setup()
    }
    private func setup() {
        horizontalStackView.addArrangedSubview(nameLabel)
        horizontalStackView.addArrangedSubview(ageLabel)
        verticalStackView.addArrangedSubview(roleLabel)
        verticalStackView.addArrangedSubview(horizontalStackView)
        addSubview(verticalStackView)
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            verticalStackView.topAnchor.constraint(equalTo: topAnchor, constant: Constants.verticalInset),
            verticalStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -Constants.verticalInset),
            verticalStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Constants.leadingInset),
            verticalStackView.trailingAnchor.constraint(equalTo: trailingAnchor)
            ])
    }
    
}
