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
        changeBallMessage()
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeBallMessage()
    }
    
    func changeBallMessage() {
        let randomValue: Int = Int(arc4random_uniform(5))
        let ballImageArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
        messageBallImageView.image = UIImage(named: ballImageArray[randomValue])
        print(ballImageArray[randomValue])
    }
    


}

