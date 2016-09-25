//
//  ViewController.swift
//  Animations
//
//  Created by 遠藤拓弥 on 2016/09/25.
//  Copyright © 2016年 遠藤拓弥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    var counter = 1
    
    var timer = NSTimer()
    
    var isAnimating = true
    
    @IBOutlet var alienImage: UIImageView!
    @IBAction func imageUpdate(sender: AnyObject) {
        if isAnimating == true {
            timer.invalidate()
            
            isAnimating = false
        }else{
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: (#selector(ViewController.doAnimation)), userInfo: nil, repeats: true)

            isAnimating = true
        }
        
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: (#selector(ViewController.doAnimation)), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    func doAnimation() {
        if counter == 6{
            counter = 1
        }else{
            counter += 1
        }
        
        alienImage.image = UIImage(named: "alien\(counter).tiff")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    override func viewDidLayoutSubviews() {
        alienImage.frame = CGRectMake(100,20,0,0)
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            
        self.alienImage.frame = CGRectMake(100,20,100,200)
        
        })
    }
     */

}

