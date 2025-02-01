import UIKit

extension ViewController {
    
    func createInfoTableView() -> UITableView {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(LabelCell.self, forCellReuseIdentifier: "LabelCell")
        tableView.register(InfoCell.self, forCellReuseIdentifier: "InfoCell")
        tableView.register(FamilyMemberCell.self, forCellReuseIdentifier: "FamilyMemberCell")
        tableView.allowsSelection = false
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }
}

extension ViewController : UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 4 ? 2 : 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { //Можно чутка разгрузить
        
        let cellModel = cellsArray[indexPath.section+indexPath.item]
        switch cellModel.identifier {
        case "LabelCell":
            guard let cell = infoTableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath) as? LabelCell else { return UITableViewCell() }
            cell.configure(with: cellModel.title)
            return cell
        case "InfoCell":
            guard let cell = infoTableView.dequeueReusableCell(withIdentifier: "InfoCell") as? InfoCell else { return UITableViewCell() }
            cell.setup()
            return cell
        case "FamilyMemberCell":
            guard let cell = infoTableView.dequeueReusableCell(withIdentifier: "FamilyMemberCell") as? FamilyMemberCell else { return UITableViewCell() }
            cell.configure(with: cellModel.familyMember ?? FamilyMember(name: "", role: "", birthdate: ""))
            return cell
        default:
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constants.cellHeight
    }
}
