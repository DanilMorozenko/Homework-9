//
//  PersonDetailsViewController.swift
//  Homework 9
//
//  Created by Danil Morozenko on 31.08.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {
   
    @IBOutlet var nameSurnameLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameSurnameLabel.text = "\(person.name) \(person.surname)"
        phoneNumberLabel.text = person.phone
        emailLabel.text = person.mail

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
