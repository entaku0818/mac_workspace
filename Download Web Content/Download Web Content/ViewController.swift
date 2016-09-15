//
//  ViewController.swift
//  Download Web Content
//
//  Created by Takuya Endo on 9/13/16.
//  Copyright © 2016 Takuya Endo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let url = NSURL(string: "https://www.stackoverflow.com")!
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
        
            if let urlContent = data{
                print(urlContent)
            }else{
                
            }
            
        }
        
        
            
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

