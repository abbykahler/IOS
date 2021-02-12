//
//  ViewController.swift
//  Cold Call
//
//  Created by Abby Kahler on 2/12/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!

    let people = ["Josh","Jimena","Marisa","Abby","Trent","Steven","Jimmy","Crystal","Robyn","Christine","Kelly","Brad"]

    @IBAction func button(_ sender: UIButton) {
        let coldcall = Int(arc4random_uniform(UInt32(people.count)))
        nameLabel.text = people[coldcall]
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

