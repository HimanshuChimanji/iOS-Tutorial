//
//  CallSmsViewController.swift
//  iOS Tutorial
//
//  Created by Himanshu Chimanji on 05/05/18.
//  Copyright © 2018 Talent4assure. All rights reserved.
//

import UIKit
import MessageUI

class CallSmsViewController: UIViewController , MFMessageComposeViewControllerDelegate {
    
    

    @IBOutlet weak var phoneNumberTf: UITextField!
    @IBOutlet weak var msgTv: UITextView!
    @IBOutlet weak var callBTN: UIButton!
    @IBOutlet weak var smsBTN: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func callBUTTON(_ sender: UIButton) {
        print("jgjk")
        if let phoneURL = NSURL(string: "tel://\(phoneNumberTf.text!)")
        {
            UIApplication.shared.open(phoneURL as URL, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func smsBUTTON(_ sender: UIButton) {
        
        let msgVC = MFMessageComposeViewController()
        msgVC.body = msgTv.text
        msgVC.recipients = [phoneNumberTf.text!]
        msgVC.messageComposeDelegate = self
        
        present(msgVC, animated: true, completion: nil)
    }
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        
    }

}
