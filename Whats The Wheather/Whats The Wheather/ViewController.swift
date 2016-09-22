//
//  ViewController.swift
//  Whats The Wheather
//
//  Created by 遠藤拓弥 on 2016/09/21.
//  Copyright © 2016年 遠藤拓弥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cityTextField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    @IBAction func findWeather(sender: AnyObject) {
        
        

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://www.weather-forecast.com/locations/Paris/forecasts/latest")!
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
                if let urlContent = data {
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                    
                let websiteArray = webContent?.componentsSeparatedByString("3 Day Weather Forecast Summary:</b><span class=\"read-more-small\"><span class=\"read-more-content\"> <span class=\"phrase\">")
                
                    if websiteArray?.count > 1{
                        print(websiteArray)
                        let weatherArray = websiteArray![1].componentsSeparatedByString("</span>")
                        
                        if websiteArray!.count > 1{
                            let weatherSammary = weatherArray[0]
                            
                            dispatch_async(dispatch_get_main_queue(), {() -> Void in
                                    self.resultLabel.text = weatherSammary
                        })
                            
                        }
                        
                    }
                    
                
            }
        }
        
        task.resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

