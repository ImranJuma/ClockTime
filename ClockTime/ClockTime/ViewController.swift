//
//  ViewController.swift
//  ClockTime
//
//  Created by Imran Juma on 2018-04-13.
//  Copyright © 2018 Imran Juma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Lable outlet added so it can be later changed
    @IBOutlet weak var lable: UILabel!
    
    //Adding in varible so we can add different customization feautures for the user
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //update the timer as soon as the application has been loaded
        self.updateTimer()
        
        //Allow the time to increase every second
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Update the timer function whenever the function is triggered
    @objc func updateTimer() {
        
    }
    
    // Function to update timer
    func upadteTimer() {
        
        //Creating the formation
        let timeFormatter = DateFormatter()
        
        //Showing the tyme style
        timeFormatter.timeStyle = .medium
        
        //Update the lable to show the ucrrent date for the user, this is local for wherever the user is
        lable.text = timeFormatter.string(from: Date())
        
    }
}


