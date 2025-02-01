import UIKit

extension ViewController {
    
    func createInfoTableView() -> UITableView {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(LabelCell.self, forCellReuseIdentifier: "LabelCell")
        tableView.register(InfoCell.self, forCellReuseIdentifier: "InfoCell")
        tableView.allowsSelection = false
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }
}

extension ViewController : UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            guard let cell = infoTableView.dequeueReusableCell(withIdentifier: "InfoCell") as? InfoCell else {
                return UITableViewCell()
            }
            cell.setup()
            return cell
                                                               
                                                               
        }
        guard let cell = infoTableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath) as? LabelCell else {
            return UITableViewCell()
        }
        cell.configure(with: "Women")
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return nil
        }
        return "Gender"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 60
        }
        return 50
    }
}
