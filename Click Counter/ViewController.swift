//
//  ViewController.swift
//  Click Counter
//
//  Created by Bill Baker on 4/4/15.
//  Copyright (c) 2015 Baker Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Create label
        
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        // Create button
        
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Add", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self,          // target
            action: "incrementCount",   // method to use
            forControlEvents: UIControlEvents.TouchUpInside)  // control event
        
        // Create decrement button
        
        var dec = UIButton()
        dec.frame = CGRectMake(150, 350, 60, 60)
        dec.setTitle("Sub", forState: .Normal)
        dec.setTitleColor(UIColor.redColor(), forState: .Normal)
        self.view.addSubview(dec)

        button.addTarget(self,          // target
            action: "decrementCount",   // method to use
            forControlEvents: UIControlEvents.TouchUpInside)  // control event
    }

    func incrementCount() {
        println("in incrementCount " + toString(count))
        self.count++
        self.label.text = "\(self.count)"
    }
    
    func decrementCount() {
        println("in decrementCount " + toString(count))
        self.count--
        self.label.text = "\(self.count)"
    }
    
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

