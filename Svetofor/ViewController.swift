//
//  ViewController.swift
//  Svetofor
//
//  Created by Иван on 8/19/20.
//  Copyright © 2020 Ivan Savkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var nextButton: UIButton!
    var currentLight : Svetofor = .red
    var i = 1
    
    enum Svetofor {
        case red
        case yellow
        case green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.layer.cornerRadius = 10
        redLight.layer.cornerRadius = 75
        yellowLight.layer.cornerRadius = 75
        greenLight.layer.cornerRadius = 75
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        

        
    }

    @IBAction func pressNextButton() {
        nextButton.setTitle("NEXT", for: .normal)
        i+=1
        switch currentLight {
        case .red:      redLight.alpha = 1
                        yellowLight.alpha = 0.3
                        greenLight.alpha = 0.3
        case .yellow:   yellowLight.alpha = 1
                        redLight.alpha = 0.3
                        greenLight.alpha = 0.3
        case .green:    greenLight.alpha = 1
                        redLight.alpha = 0.3
                        yellowLight.alpha = 0.3
        default:
            break
        }
            if i % 2 == 0 {
                currentLight = .yellow
            } else if i % 3 == 0 {
                    currentLight = .green
                i = 0
                } else {
                    currentLight = .red
                }
            print ("default")

        
                        }
    }



