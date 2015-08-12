//
//  ViewController.swift
//  RandColor
//
//  Created by pandazheng on 15/8/12.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var Timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "randomColor", userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func randomColor() {
        var redValue = CGFloat(drand48())
        var greenValue = CGFloat(drand48())
        var blueValue = CGFloat(drand48())
        
        self.view.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
}

