//
//  ViewController.swift
//  Controlling The Keyboard
//
//  Created by Takuya Endo on 9/7/16.
//  Copyright © 2016 Takuya Endo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.text.delegate = self
    }

    @IBOutlet weak var text: UITextField!
    
    @IBOutlet weak var label: UILabel!
    

    @IBAction func buttonPressed(sender: AnyObject) {
        label.text = text.text
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //キーボード以外の場所をタップした場合
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField ) -> Bool{
        textField.resignFirstResponder()
        
        return true
    }

}

