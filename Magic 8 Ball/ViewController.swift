//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Daryl Findlay on 09/05/2019.
//  Copyright © 2019 Daryl Findlay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    func updateBall() {
        let randomBallIndex = Int(arc4random_uniform(4))
        ballImage.image = UIImage(named: ballArray[randomBallIndex])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBall()
    }
    
    @IBAction func handleAskPressed(_ sender: Any) {
        updateBall()
    }
    
}

