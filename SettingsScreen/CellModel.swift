struct Cell{
    var identifier: String
    var section: Int
    var title : String?
    var familyMember: FamilyMember?
    var userInfo: User?
}

struct FamilyMember {
    var name: String
    var role: String
    var birthdate: String
}

struct User {
    var name: String
    var birthdate: String
    var picName: String
}
