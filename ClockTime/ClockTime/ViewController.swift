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
    
    //Outlet for our settings button so we can change the different atributes of the button such as for when we want to fade it out
    @IBOutlet weak var settingsButton: UIButton!

    //Another outlet for our settingsView, so we can also make it appear at times we want and put it away when the user does not want to change the settings
    @IBOutlet weak var settingsView: UIView!
    
    //Adding in varible so we can add different customization feautures for the user
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //update the timer as soon as the application has been loaded
        self.updateTimer()
        
        //Allow the time to increase every second
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
        //By deault we are hiding the settings view from the user unless he requests it, and making sure the settings are also faded out
        settingsView.isHidden = true
        settingsButton.alpha = 0.25
        
        // Making the UI look alot better by adding some rounded edges to the View the higher the radius the better the curves
        // Making the application look alot better
        settingsView.layer.cornerRadius = 5
        settingsButton.layer.cornerRadius = 5
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Action for the different functions of the settings button that we are creating
    @IBAction func settingsButton(_ sender: Any) {
        
        // if the view is currently hidden then show the view to the user
        if settingsView.isHidden == true {
            
            // show the view to the user, and allow them to hide the settings if they dont want to change anything
            settingsView.isHidden = false
            settingsButton.setTitle("Hide Settings", for: UIControlState.normal)
            
            // Chaning the fading of the button
            settingsButton.alpha = 1.0
            
        } else {
            
            // if the settings view is not hidden allow them to show the settings, and then put it away after
            settingsView.isHidden = true
            settingsButton.setTitle("Show Settings", for: UIControlState.normal)
            
            // Changing the fading of the button
            settingsButton.alpha = 0.25
        }
        
    }
    
    //Update the timer function whenever the function is triggered
    @objc func updateTimer() {
        
        // update the time when the function is called to the current user time
        let timeFormatter = DateFormatter()
        timeFormatter.timeStyle = .medium
        lable.text = timeFormatter.string(from: Date())
        
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


