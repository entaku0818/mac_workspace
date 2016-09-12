//
//  ViewController.swift
//  Table View
//
//  Created by 遠藤拓弥 on 2016/09/04.
//  Copyright © 2016年 遠藤拓弥. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    var cellContent = ["Rob","Kirsten","Tommy", "Ralphie"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return cellContent.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = cellContent[indexPath.row]
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

