//
//  StructPerconListTableViewController.swift
//  ContactsApp
//
//  Created by Михаил Зверьков on 29.12.2021.
//

import UIKit

class StructPerconListTableViewController: UITableViewController {

    var persons = DataManager.getPercons()
    //не смог перенести с ТабБара данные :(
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Persons List"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "structPerson", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = persons[indexPath.section].name + " " + persons[indexPath.section].surname
        case 1:
            content.text = persons[indexPath.section].phone
            content.image = UIImage(systemName: "phone")
        default:
            content.text = persons[indexPath.section].email
            content.image = UIImage(systemName: "mail")
        }
        cell.contentConfiguration = content
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {

        if indexPath.row == 0 {
            cell.backgroundColor = .lightGray
        }
        //Обратил внимание на то, что при резком проматывании списка, цвета строк съезжают и некоторые излишне закрашиваются в серый...
    }
}
