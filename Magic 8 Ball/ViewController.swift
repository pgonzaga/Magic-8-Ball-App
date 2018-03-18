//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Pablo Gonzaga on 3/18/18.
//  Copyright © 2018 Pablo Gonzaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallIndex : Int = 0
    let balls : [String] = [
        "ball1", "ball2", "ball3", "ball4", "ball5"
    ]

    @IBOutlet weak var answerBallView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func answerButtonTouched(_ sender: UIButton) {
        
        updateBallImage()

    }
    
    func updateBallImage() {
 
        randomBallIndex = Int(arc4random_uniform(5))
        answerBallView.image = UIImage(
            named: balls[randomBallIndex]
        )

    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateBallImage()
        
    }
    
}

