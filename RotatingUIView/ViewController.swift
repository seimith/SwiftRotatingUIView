//
//  ViewController.swift
//  RotatingUIView
//
//  Created by Seimith on 8/27/16.
//  Copyright © 2016 Seimith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 1. We just added this IBOutlet
    @IBOutlet weak var mySpinnerView: UIView!
    @IBOutlet weak var myYellowSpinner: UIView!
    @IBOutlet weak var myBloodOrangeSpinner: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 3. Starting animation when app loads
        self.beginAnimation()
        
        // 5. Starting other animations when app loads
        self.beginYellowAnimation()
        self.beginBloodAnimation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 2. Function to spin foreverrrr
    func beginAnimation () {
        UIView.animateWithDuration(1.0, delay: 0, options: .CurveLinear, animations: { () -> Void in
            
            self.mySpinnerView.transform = CGAffineTransformRotate(self.mySpinnerView.transform, CGFloat(M_PI))
        }) { (finished) -> Void in
            self.beginAnimation()
        }
        
    }
    
    // 4. Yellow and Blood Orange spinners
    func beginYellowAnimation () {
        UIView.animateWithDuration(0.7, delay: 0, options: .CurveLinear, animations: { () -> Void in
            
            self.myYellowSpinner.transform = CGAffineTransformRotate(self.myYellowSpinner.transform, CGFloat(M_PI))
        }) { (finished) -> Void in
            self.beginYellowAnimation()
        }
        
    }
    
    func beginBloodAnimation () {
        UIView.animateWithDuration(1.5, delay: 0, options: .CurveLinear, animations: { () -> Void in
            self.myBloodOrangeSpinner.transform = CGAffineTransformRotate(self.myBloodOrangeSpinner.transform, CGFloat(M_PI))
        }) { (finished) -> Void in
            self.beginBloodAnimation()
        }
        
    }


}

