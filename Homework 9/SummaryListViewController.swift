//
//  SummaryListViewController.swift
//  Homework 9
//
//  Created by Danil Morozenko on 31.08.2022.
//

import UIKit

class SummaryListViewController: UITableViewController {
    
    var personSummary: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        personSummary.count
         //return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       // personSummary.count
        return 2
    }

    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "summaryData", for: indexPath)
            let person = personSummary[0]
         
            var content = cell.defaultContentConfiguration()
            
            if indexPath.row == 0 {
                content.text = "📞 \(person.phone)"
                cell.contentConfiguration = content
            } else {
                content.text = "💌 \(person.mail)"
                cell.contentConfiguration = content
            }
            
            return cell
            
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "summaryData", for: indexPath)
            let person = personSummary[1]
         
            var content = cell.defaultContentConfiguration()
            
            if indexPath.row == 0 {
                content.text = "📞 \(person.phone)"
                cell.contentConfiguration = content
            } else {
                content.text = "💌 \(person.mail)"
                cell.contentConfiguration = content
            }
            
            
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "summaryData", for: indexPath)
            let person = personSummary[2]
         
            var content = cell.defaultContentConfiguration()
            
            if indexPath.row == 0 {
                content.text = "📞 \(person.phone)"
                cell.contentConfiguration = content
            } else {
                content.text = "💌 \(person.mail)"
                cell.contentConfiguration = content
            }
            
            return cell
        }
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        if section == 0 {
            let person = personSummary [0]
            return "\(person.name) \(person.surname)"
        } else if section == 1 {
            let person = personSummary [1]
            return "\(person.name) \(person.surname)"
        } else {
            let person = personSummary [2]
            return "\(person.name) \(person.surname)"
        }
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
