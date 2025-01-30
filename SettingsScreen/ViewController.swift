import UIKit

class ViewController: UIViewController {
    
    //MARK: Basic UI elements
    
    private let leadingInset: CGFloat = 16
    private lazy var mainInfoLabel: (String, CGFloat) -> UILabel = { content, size in
        let label = UILabel()
        label.font = .systemFont(ofSize: size, weight: .medium)
        label.text = content
        return label
    }
    
    private lazy var subInfoLabel: (String) -> UILabel = { content in
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textColor = .gray
        label.text = content
        return label
    }
    
    private lazy var profilePic: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "person.circle.fill"))
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 25
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 50),
            imageView.heightAnchor.constraint(equalToConstant: 50)
            ])
        return imageView
    }()

    //MARK: User info entries
    
    private lazy var sex = makeUserInfoEntry(heading: "Sex", info: "Woman")
    private lazy var work = makeUserInfoEntry(heading: "Work", info: "Software Engineer")
    
    //MARK: Definition of headStackView
    
    private lazy var headStackView: UIStackView = {
        let horizontalStackView = UIStackView()
        horizontalStackView.axis = .horizontal
        
        let verticalStackView = UIStackView()
        verticalStackView.axis = .vertical
        
        verticalStackView.addArrangedSubview(mainInfoLabel("Danyydze", 18))
        verticalStackView.addArrangedSubview(subInfoLabel("01.01.1970"))
        
        horizontalStackView.addArrangedSubview(verticalStackView)
        horizontalStackView.addArrangedSubview(profilePic)
        
        return horizontalStackView
    }()
    
    //MARK: Definition of InfoStack
    
    private lazy var userInfoStackView = InfoStackView()
    private lazy var familyInfoStackView = InfoStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupheadStack()
        setupUserInfoStack()
    }

    private func setupheadStack() {
        view.addSubview(headStackView)
        headStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            headStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            headStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            headStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leadingInset)
            ])
    }
    
    private func setupUserInfoStack() {
        view.addSubview(userInfoStackView)
        [mainInfoLabel("User Info", 19), sex, work, subInfoLabel("Family"), familyInfoStackView].forEach {
            userInfoStackView.addArrangedSubview($0)
        }
        
        userInfoStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            userInfoStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userInfoStackView.topAnchor.constraint(equalTo: headStackView.bottomAnchor, constant: 20),
            userInfoStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leadingInset)
            ])
    }
    
    
    private func makeUserInfoEntry(heading: String, info: String) -> UserInfoEntry {
        let infoEntry = UserInfoEntry()
        infoEntry.setup(heading: heading, info: info)
        return infoEntry
    }

}

