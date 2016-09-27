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
    
    let winningCombinations = [[0, 1, 2], [3, 4, 5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0, 4, 8], [2,4,6] ]
    
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
            
            for combination in winningCombinations{
                if (gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[] )
            }
            
            
            
            
        }
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

