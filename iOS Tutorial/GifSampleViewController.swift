//
//  GifSampleViewController.swift
//  iOS Tutorial
//
//  Created by Himanshu Chimanji on 02/07/18.
//  Copyright © 2018 Talent4assure. All rights reserved.
//

import UIKit

class GifSampleViewController: UIViewController {
    
    @IBOutlet weak var gifImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gifImageView.loadGif(name: "loading")
        
    }
    
    
}
