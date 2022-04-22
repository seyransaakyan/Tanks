//
//  Manager.swift
//  Quads
//
//  Created by Seyran Saakyan on 22.04.2022.
//

import Foundation
import UIKit
class Manager{
    static let shared = Manager()
    
    private init() {}
    
    
    func turnRight(object: UIImageView){
        object.frame.origin.x += 10
    }
    
    func turnLeft(object: UIImageView){
        object.frame.origin.x -= 10
    }
    
    func goForward(object: UIImageView){
        object.frame.origin.y -= 10
    }
    
    func goBack(object: UIImageView){
        object.frame.origin.y += 10
    }

}
