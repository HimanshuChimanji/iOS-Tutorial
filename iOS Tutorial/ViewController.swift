//
//  ViewController.swift
//  iOS Tutorial
//
//  Created by Himanshu Chimanji on 21/04/18.
//  Copyright © 2018 Talent4assure. All rights reserved.
//

import UIKit

class ViewController: UIViewController , apiManagerDelegate {

    var appConstants : AppConstants = AppConstants()
    var apiManager : ApiManager = ApiManager()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        apiManager = ApiManager()
        apiManager.delegate = self
        
        apiManager.personNameApi()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

