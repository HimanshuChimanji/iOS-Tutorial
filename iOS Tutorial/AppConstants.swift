//
//  AppConstants.swift
//  Talent4Asure
//
//  Created by pooja on 22/04/17.
//  Copyright © 2017 pooja. All rights reserved.
//

import Foundation
import UIKit
import MBProgressHUD

class AppConstants {
    //App Constants
    var screenWidth = UIScreen.main.bounds.width
    var screenHeight = UIScreen.main.bounds.height
    let defaults = UserDefaults.standard
    // My Apple Store URL
    let urlStr = "https://itunes.apple.com/us/app/manage-your-visitor/id1352270322?ls=1&mt=8"
    
    //Personal Host URL
    
    let showPersonURL = URL_Mapping.init().MainHost+"user/1"
    
    
    // Data Constants
    let IS_LOGIN = "is_login"
    let IS_STUDENT = " is_student"
    let IS_TRAINER = "is_trainer"
    
    //UI Constants
    
    
    //WebService constants
    
    let ErrorCode = "ErrorCode"
    let Message = "Message"
    
    
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
