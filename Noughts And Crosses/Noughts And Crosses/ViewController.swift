//
//  ViewController.swift
//  Noughts And Crosses
//
//  Created by Takuya Endo on 9/27/16.
//  Copyright © 2016 Takuya Endo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var activePlayer = 1 //1 = noughts, 2 = crosses
    var gameState = [0,0,0,0,0,0,0,0,0]
    
    @IBOutlet weak var button: UIButton!
    @IBAction func buttonPressed(sender: AnyObject) {
 
        if (gameState[sender.tag] == 0){
            gameState[sender.tag] = activePlayer
            
            if activePlayer == 1{
                    sender.setImage(UIImage(named: "nought.png"), forState: .Normal)
            activePlayer = 2
            }else{
            
                    sender.setImage(UIImage(named: "cross.png"), forState: .Normal)
            activePlayer = 1
            }
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

