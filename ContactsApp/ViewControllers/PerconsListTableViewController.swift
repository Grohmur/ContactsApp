//
//  PerconsListTableViewController.swift
//  ContactsApp
//
//  Created by Михаил Зверьков on 29.12.2021.
//

import UIKit

class PerconsListTableViewController: UITableViewController {

    var persons = DataManager.getPercons()
//не смог перенести с ТабБара данные :(
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "perconName", for: indexPath)
        
        let perconeName = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = perconeName.name + " " + perconeName.surname

        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personInfoCV = segue.destination as? PerconInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let selectedPercon = persons[indexPath.row]
        
        personInfoCV.personInfo = selectedPercon
    }

}
