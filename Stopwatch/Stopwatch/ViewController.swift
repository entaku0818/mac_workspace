//
//  ViewController.swift
//  Stopwatch
//
//  Created by 遠藤拓弥 on 2016/08/30.
//  Copyright © 2016年 遠藤拓弥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var timer = NSTimer()
    
    var minutes = 0
    var seconds = 55
    
    @IBOutlet var timerLabel: UILabel!
    @IBAction func play(sender: AnyObject) {
        
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
    }
    
    func increaseTimer() {
        seconds++
        
        if (seconds == 60){
            minutes++
            seconds=0
        }
        
        timerLabel.text="\(minutes)分\(seconds)秒"
    }

    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    
    @IBAction func reset(sender: AnyObject) {
                timer.invalidate()
        minutes=0
        seconds=0
        timerLabel.text="\(minutes)分\(seconds)秒"
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

