//
//  AppConstants.swift
//  iOS Tutorial
//
//  Created by Himanshu Chimanji on 02/07/18.
//  Copyright © 2018 Talent4assure. All rights reserved.
//

import Foundation
import UIKit
import MBProgressHUD

class AppConstants {
    //App Constants
    let defaults = UserDefaults.standard

    
    // URL List
    let showPersonURL = URL_Mapping.init().MainHost+"user/1"
    
    
    
    //methods
    
    func showAlert(title: String , message: String, controller: UIViewController){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        controller.present(alert, animated: true, completion: nil)
    }
    
    //MARK: To show progress HUD
    func showLoadingHUD(to_view: UIView) {
        let hud = MBProgressHUD.showAdded(to: to_view, animated: true)
        // hud.label.text = "Loading..."
    }
    
    //MARK: To hide progress HUD
    func hideLoadingHUD(for_view: UIView) {
        MBProgressHUD.hideAllHUDs(for: for_view, animated: true)
    }
    
}
