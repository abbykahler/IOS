//
//  ViewController.swift
//  Cold Call
//
//  Created by Abby Kahler on 2/12/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var numberLabel: UILabel!
    
    let people = ["Josh","Jimena","Marisa","Abby","Trent","Steven","Jimmy","Crystal","Robyn","Christine","Kelly","Brad"]

    @IBAction func button(_ sender: UIButton) {
        let number = Int(arc4random_uniform(5) + 1)
                let show_number = String(number)
                numberLabel.text = show_number
                if number <= 2{
                    numberLabel.textColor = UIColor.red
                }else if number == 5{
                    numberLabel.textColor = UIColor.green
                }else if number >= 5{
                    numberLabel.textColor = UIColor.blue
                }else {
                    numberLabel.textColor = UIColor.orange
                }
                let personNumber = Int(arc4random_uniform(UInt32(people.count)))
                nameLabel.text = people[personNumber]
            }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
  
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }


}

