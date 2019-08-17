//
//  ViewController.swift
//  AnimatingMovement
//
//  Created by Mohamed on 8/17/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var black1: UIView!
    
    @IBOutlet weak var black2: UIView!
    
    @IBOutlet weak var black3: UIView!
    
    @IBOutlet weak var black4: UIView!
    
    @IBOutlet weak var yellowOne: UIView!
    
    @IBOutlet weak var blueOne: UIView!
    
    @IBOutlet weak var orangeOne: UIView!
    
    @IBOutlet weak var graeenOne: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    func moveRight(view: UIView){
        
        view.center.x += 300
        
    }
    
    func moveLeft(view: UIView){
        
       view.center.x -= 300
    }

    @IBAction func blackAnimation(_ sender: UIButton) {
        UIView.animate(withDuration: 2.0, animations: {
            
            
            self.moveRight(view: self.black1)
            self.moveRight(view: self.black2)
            self.moveRight(view: self.black3)
            self.moveRight(view: self.black4)
            
        }) { (finished) in
            
            if finished {
                
                UIView.animate(withDuration: 2.0, animations: {
                    self.moveLeft(view: self.black1)
                    self.moveLeft(view: self.black2)
                    self.moveLeft(view: self.black3)
                    self.moveLeft(view: self.black4)
                    
                }, completion: nil)
                
            }
        }
        
        
    }
    
    
    
    @IBAction func coloredAnimation(_ sender: UIButton) {
        
        
    }
    
    
    
}

