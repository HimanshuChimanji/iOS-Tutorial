//
//  AlarmofireViewController.swift
//  iOS Tutorial
//
//  Created by Himanshu Chimanji on 10/08/18.
//  Copyright © 2018 Talent4assure. All rights reserved.
//

import UIKit
import Alamofire

class AlarmofireViewController: UIViewController {
    
    let url = "http://192.168.0.43:8081/StudentAssessment2/getPracticeQuestionForApp"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        downloadJsonWithURL()
        
    }
    
    
    func downloadJsonWithURL()
    {
        let param : Parameters =
            [
                "import_level_id": "92",
                "import_level" : "T"
            ]
        Alamofire.request(url, method: .post, parameters: param, encoding: JSONEncoding.default, headers: nil).responseJSON { response in
            let valueOfResultInResponse = response.result.value
            let convertingToArray = valueOfResultInResponse as! NSArray
           
            for valueInArray in convertingToArray
            {
                let itCouldBeNsDictionary = valueInArray as? NSDictionary
                
                let success = itCouldBeNsDictionary?.value(forKey: "SUCCESS") as! Int
                print(success)
            }
        }


    }
}
