import UIKit

class ViewController: UIViewController {
    
    public lazy var infoTableView = createInfoTableView()
    let cellsArray = Constants.cells
    let sections = Constants.headers
    
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

