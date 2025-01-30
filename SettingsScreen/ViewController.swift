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
    
    private lazy var sex = makeUserInfoEntry(headig: "Sex", info: "Woman")
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupheadStack()
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
    
    
    private func makeUserInfoEntry(headig: String, info: String) -> UserInfoEntry {
        let infoEntry = UserInfoEntry()
        infoEntry.setup(heading: headig, info: info)
        return infoEntry
    }

}

