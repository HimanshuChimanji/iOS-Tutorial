//
//  Toast.swift
//  iOS Tutorial
//
//  Created by Himanshu Chimanji on 10/11/18.
//  Copyright © 2018 Talent4assure. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func showToast(message : String) {
        self.view.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.width/2 - 100, y: self.view.frame.height/2-20, width: 200, height: 40))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        toastLabel.textColor = UIColor.white
        toastLabel.adjustsFontSizeToFitWidth = true
        
        toastLabel.textAlignment = .center;
        toastLabel.font = UIFont(name: "Montserrat-Light", size: 12.0)
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.numberOfLines = 50
        
        
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.3, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
}
