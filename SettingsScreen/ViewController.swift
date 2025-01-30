import UIKit

class ViewController: UIViewController {

    //MARK: User info entries
    
    private lazy var sex = makeUserInfoEntry(headig: "Sex", info: "Woman")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
        view.addSubview(sex)
        
        sex.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sex.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sex.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    private func makeUserInfoEntry(headig: String, info: String) -> UserInfoEntry {
        let infoEntry = UserInfoEntry()
        infoEntry.setup(heading: headig, info: info)
        return infoEntry
    }

}

