//
//  ViewController.swift
//  How many fingers
//
//  Created by 遠藤拓弥 on 2016/08/21.
//  Copyright © 2016年 遠藤拓弥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuessTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func guess(sender: AnyObject) {
        let diceroll = String(arc4random_uniform(6))
        
        print(diceroll)

        
        if diceroll == userGuessTextField.text{
            resultLabel.text = "You're right!!"
        }else{
            resultLabel.text = "wrong!! It was a " + diceroll
        }

        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

