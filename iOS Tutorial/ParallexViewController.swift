//
//  ParallexViewController.swift
//  iOS Tutorial
//
//  Created by Himanshu Chimanji on 21/04/18.
//  Copyright © 2018 Talent4assure. All rights reserved.
//

import UIKit

class ParallexViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var foregroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyEffect(onView: backgroundImage, magnitude: 100)
        applyEffect(onView: foregroundImage, magnitude: 30)
        
    }

    func applyEffect(onView : UIView , magnitude : Double)
    {
        // X Axis
        
        let xAxisEffect = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        xAxisEffect.maximumRelativeValue = magnitude
        xAxisEffect.minimumRelativeValue = -magnitude
        
        // Y Axis
        let yAxisEffect = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        yAxisEffect.maximumRelativeValue = magnitude
        yAxisEffect.minimumRelativeValue = -magnitude
        
        let effectGroup = UIMotionEffectGroup()
        effectGroup.motionEffects = [yAxisEffect , xAxisEffect]
        onView.addMotionEffect(effectGroup)
    }
}
