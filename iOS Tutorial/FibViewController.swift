//
//  FibViewController.swift
//  iOS Tutorial
//
//  Created by Himanshu Chimanji on 09/08/18.
//  Copyright © 2018 Talent4assure. All rights reserved.
//

import UIKit

class FibViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        print(fibonacci(numSteps: 20))
        ArmStrong()
        
    }
    
    func fibonacci(numSteps: Int) ->[Int] {
        var sequence = [0,1]
        if numSteps == 1
        {
            return sequence
        }
        else if numSteps == 0
        {
            return [0]
        }
        for _ in 0...numSteps - 2
        {
            let first = sequence[sequence.count-2]
            let second = sequence.last!
            sequence.append(first+second)
        }
        return sequence
    }
    func ArmStrong()
    {
        var r = Int()
        var x = Int()
        var s = Int()
        
        for n in 1...1000
        {
            s = 0
            x = n
            while (x != 0) {
                r = x%10
                s = s+r*r*r
                x = x/10
                
            }
            
            if s == n
            {
                print("Armstrong Number: \(n)")
            }
        }
        
    }
}
