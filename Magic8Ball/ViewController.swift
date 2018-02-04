//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Pavan Sabnis on 2/3/18.
//  Copyright © 2018 Pavan Sabnis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageBallImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        messageBallImageView.image = UIImage(named: "ball1")
    }
    
    @IBAction func askButonPressed(_ sender: Any) {
        let randomValue: Int = Int(arc4random_uniform(4))
        let ballImageArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
        messageBallImageView.image = UIImage(named: ballImageArray[randomValue])
        
    }
    


}

