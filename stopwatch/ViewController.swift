//
//  ViewController.swift
//  stopwatch
//
//  Created by Marta Fonda on 23/12/15.
//  Copyright © 2015 Marta Fonda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var chronometerInfo: UILabel!
    var timer = NSTimer()
    var count:Int = 0
    
    func displayChronometer(count: Int){
        chronometerInfo.text = String(count)
    }
    
    func startChronometer(){
        count++
        displayChronometer(count)
    }
    
    @IBAction func pauseButton(sender: UIBarButtonItem) {
        timer.invalidate()
    }
    
    @IBAction func startButton(sender: UIBarButtonItem) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("startChronometer"), userInfo: nil, repeats: true)
    }
    
    @IBAction func resetButton(sender: UIBarButtonItem) {
        timer.fire()
        count = 0
        displayChronometer(count)
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

