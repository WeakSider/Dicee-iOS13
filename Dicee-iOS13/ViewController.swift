//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftDice: UIImageView!
    
    @IBOutlet weak var rightDice: UIImageView!
    
    @IBAction func rollDice(_ sender: UIButton) {
        let diceArray = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]
        var count = 0
        var timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true){ t in
            count += 1
            print(count)
            self.leftDice.image = diceArray[Int.random(in: 0 ... 5)]
            self.rightDice.image = diceArray[Int.random(in: 0 ... 5)]
            if count >= 4 {
                t.invalidate()
            }
        }
        
    }
    
}

