import UIKit

class ViewController: UIViewController {
    
    public lazy var infoTableView = createInfoTableView()
    let cellsArray = [Cell(identifier: "InfoCell", section: 0, userInfo: User(name: "Danil Sigma", birthdate: "11.02.2007", picName: "person.circle.fill"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLayout()
    }
    
    func setupLayout() {
        view.addSubview(infoTableView)
        infoTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            infoTableView.topAnchor.constraint(equalTo: view.topAnchor),
            infoTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            infoTableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            infoTableView.rightAnchor.constraint(equalTo: view.rightAnchor)
            ])
    }
}

