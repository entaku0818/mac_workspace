//
//  ViewController.swift
//  Whats The Wheather
//
//  Created by 遠藤拓弥 on 2016/09/21.
//  Copyright © 2016年 遠藤拓弥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!

    @IBAction func findWeather(sender: AnyObject) {
        let attemptedUrl = NSURL(string: "http://www.weather-forecast.com/locations/" + cityTextField.text!.stringByReplacingOccurrencesOfString("　", withString: "-") + "/forecasts/latest")
        
        var wasSuccessful = false
        
        if let url = attemptedUrl{
            let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
                if let urlContent = data {
                    let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                    
                    let websiteArray = webContent?.componentsSeparatedByString("3 Day Weather Forecast Summary:</b><span class=\"read-more-small\"><span class=\"read-more-content\"> <span class=\"phrase\">")
                    
                    if websiteArray?.count > 1{
                        print(websiteArray)
                        let weatherArray = websiteArray![1].componentsSeparatedByString("</span>")
                        
                        if websiteArray!.count > 1{
                            let weatherSammary = weatherArray[0].stringByReplacingOccurrencesOfString("&deg;", withString: "º")
                            
                            wasSuccessful = true
                            
                            dispatch_async(dispatch_get_main_queue(), {() -> Void in
                                self.resultLabel.text = weatherSammary
                            })
                            
                        }
                        
                    }
                    
                    
                }
            }
            task.resume()
                if wasSuccessful == false{
                    self.resultLabel.text = "Couldn't find the weather for that city - please try again."
                }
            
        }else{
                    self.resultLabel.text = "Couldn't find the weather for that city - please try again."
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

