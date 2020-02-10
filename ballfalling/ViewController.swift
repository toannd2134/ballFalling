//
//  ViewController.swift
//  ballfalling
//
//  Created by Toan on 2/10/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
let curerent = NSDate()
    let cenlendar = NSCalendar.current
    
    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setup() // Do any additional setup after loading the view.
//    fallingByAnimation()
        fallingByTime()
        
        
    }
    func setup(){
        myView.frame = CGRect(x: 200, y: 200, width: 50, height: 50)
        myView.layer.cornerRadius = myView.frame.width/2
    }
    func fallingByAnimation(){
        UIView.animate(withDuration: 5) {
            self.myView.frame.origin.y += 650
        }
    }
    func setTime()->Int{
        let second = cenlendar.component(.second, from: curerent as Date)
        return second
    }
    func fallingByTime(){
        
        var time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runLoop), userInfo: nil, repeats: true)
    }
    @objc func runLoop(){
        myView.frame.origin.y += CGFloat(setTime())
       
        
    }
}

