//
//  ViewController.swift
//  stopwatch
//
//  Created by Marta Fonda on 23/12/15.
//  Copyright © 2015 Marta Fonda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var count = 0
    
    func chronometer(){
    
        count++
        print(count)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("chronometer"), userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

