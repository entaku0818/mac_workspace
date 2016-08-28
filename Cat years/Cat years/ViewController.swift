//
//  ViewController.swift
//  Cat years
//
//  Created by 遠藤拓弥 on 2016/08/14.
//  Copyright © 2016年 遠藤拓弥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var catAgeTextField: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findAge(sender: AnyObject) {
        
        //値の入力
        var catAge = Int(catAgeTextField.text!)!
        
        catAge = catAge * 7
        
        resultLabel.text="Your cat is \(catAge) in cat years"
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

