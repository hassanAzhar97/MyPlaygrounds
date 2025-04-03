//
//  ViewController.swift
//  ToDoApp
//
//  Created by Hassan Azhar on 30/07/2022.
//

import UIKit

class ViewController: UIViewController {
    let todos = [
        ToDo(title: "Make Parathas"),
    ToDo(title:"Dip In Dahi"),
    ToDo(title: "Drink Lassi"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }


}

//MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let todo = todos[indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel?.text = todo.title
        return cell
    }
    
    
}
