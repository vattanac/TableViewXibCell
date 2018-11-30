//
//  ViewController.swift
//  TableViewHRDKompotRoom
//
//  Created by Vattanac on 11/22/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource {

    
    var students = ["sok","sao","ploy","kok","dara","rachana","Olly chen"]
    override func viewDidLoad() {
        super.viewDidLoad()
       
        studentTableView.tableFooterView = UIView()
    }
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellid1")
            cell?.textLabel?.text = students[indexPath.row]
            return cell!
        }else{
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cellid2")
//            cell?.textLabel?.text = students[indexPath.row]
//            return cell!
            let cell = Bundle.main.loadNibNamed("CustomTableViewCell", owner: self, options: nil)?.first as! CustomTableViewCell
            let image = UIImage(named: "img")
            cell.configureCell(text: students[indexPath.row], image: image!)
            cell.selectionStyle = .none
            return cell
        }
    }
    
    @IBOutlet weak var studentTableView: UITableView!
    

    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let edit =  UITableViewRowAction(style: .normal, title: "Edit") { (action, IndexPath) in
            print("Edit \(self.students[IndexPath.row])")
        }
        let delete = UITableViewRowAction(style: .destructive, title: "Delete") { (action, IndexPath) in
            self.students.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            
        }
        return [edit,delete]
    }
}

