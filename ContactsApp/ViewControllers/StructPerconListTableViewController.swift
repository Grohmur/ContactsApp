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
        case 0: content.text = persons[indexPath.section].name + " " + persons[indexPath.section].surname
        case 1: content.text = persons[indexPath.section].phone
        default: content.text = persons[indexPath.section].email
        }

        cell.contentConfiguration = content
        return cell
    }
}
//
