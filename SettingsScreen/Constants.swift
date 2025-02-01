import UIKit
enum Constants {
    static let titleFont = UIFont.systemFont(ofSize: 17, weight: .medium)
    static let infoFont = UIFont.systemFont(ofSize: 13, weight: .light)
    static let userName = "Danil Sigma"
    static let userBirhdate = "11.02.2007"
    static let userPicName = "person.circle.fill"
    static let cellHeight: CGFloat = 50
    static let leadingInset : CGFloat = 20
    static let verticalInset: CGFloat = 6
    static let headers: [String?] = [nil, "Gender", "Work", "University", "Family members"]
    static let cells = [
        Cell(identifier: "InfoCell", section: 0, userInfo: User(name: userName, birthdate: userBirhdate)),
        Cell(identifier: "LabelCell", section: 1, title: "Men"),
        Cell(identifier: "LabelCell", section: 2, title: "Styleru"),
        Cell(identifier: "LabelCell", section: 3, title: "HSE"),
        Cell(identifier: "FamilyMemberCell", section: 4, familyMember: FamilyMember(name: "Ivan", role: "Papa", birthdate: "11.07.1945")),
        Cell(identifier: "FamilyMemberCell", section: 4, familyMember: FamilyMember(name: "Lera", role: "Mama", birthdate: "12.07.1945")) ]
}
