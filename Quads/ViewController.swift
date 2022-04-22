//
//  ViewController.swift
//  Quads
//
//  Created by Seyran Saakyan on 22.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var wallsArray: [UIView]!
    @IBOutlet weak var tank: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func upButtonPressed() {
        for wall in wallsArray{
            if (tank.frame.origin.x + 10) == wall.frame.origin.x{
                return 
            }
        }
        Manager.shared.goForward(object: tank)
        
    }
    @IBAction func rightButtonPressed() {
        Manager.shared.turnRight(object: tank)
    }
    @IBAction func downButtonPressed() {
        Manager.shared.goBack(object: tank)
    }
    @IBAction func leftButtonPressed() {
        Manager.shared.turnLeft(object: tank)
    }
}

