//
//  ViewController.swift
//  Times Tables
//
//  Created by 遠藤拓弥 on 2016/09/04.
//  Copyright © 2016年 遠藤拓弥. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBOutlet var sliderValue: UISlider!
    @IBAction func sliderMoved(sender: AnyObject) {
        
        table.reloadData()

    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let timesTable = Int(sliderValue.value * 20)
        
        cell.textLabel?.text = String(timesTable * (indexPath.row+1))
        return cell
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

