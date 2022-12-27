//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlets allows me to reference a Ui element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
        
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {

        //      let is used in constant case. When the value doent's change
        let diceArray = [UIImage(named: "DiceOne"),UIImage(named: "DiceTwo"),UIImage(named: "DiceThree"),UIImage(named: "DiceFour"),UIImage(named: "DiceFive"),UIImage(named: "DiceSix")]

        //       This is a easier form to randomize a value
        diceImageView1.image = diceArray [Int.random(in: 0...5)]
        diceImageView2.image = diceArray [Int.random(in: 0...5)]
    }
}

