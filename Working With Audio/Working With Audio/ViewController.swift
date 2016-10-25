//
//  ViewController.swift
//  Working With Audio
//
//  Created by Takuya Endo on 10/25/16.
//  Copyright © 2016 Takuya Endo. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    @IBAction func play(sender: AnyObject) {
        

            player.play()

    }
    
    
    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
    }
    var player: AVAudioPlayer = AVAudioPlayer()

    @IBAction func adjustVolume(sender: AnyObject) {
        
        player.volume = slider.value
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let audioPath = NSBundle.mainBundle().pathForResource("Gotcha", ofType: "mp3")
        
        do{
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath!))
        }catch{
            
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

