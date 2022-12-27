//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
// 
//  Updated by Edson Luiz on 12/26/2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //UiView and ProgressBar
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    var eggTime = ["Soft":300, "Medium":420, "Hard":720] // Egg time values (minutes to seconds)
    var secondPassed = 0
    var totalTime = 0
    var soundPlayer: AVAudioPlayer!
    
    var time = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        time.invalidate() // reset time after click
        let hardness = sender.currentTitle!
        totalTime = eggTime[hardness]!
        
        //initialize progressBar, seconds and change label to selected item
        progressBar.progress = 0.0
        secondPassed = 0
        titleLabel.text = hardness
        
        //Set time value using Timer function
        time = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        
        if secondPassed < totalTime {
            secondPassed += 1 //Count seconds
            
            //Update progressBar following time selected
            progressBar.progress = Float(secondPassed) / Float(totalTime)
            
        }else{
            time.invalidate()//Reset timer
            
            titleLabel.text = "DONE!"//Change title text
            
            //Initialize and play audio
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")!
            soundPlayer = try! AVAudioPlayer(contentsOf: url)
            soundPlayer.play()
        }
    }
}
