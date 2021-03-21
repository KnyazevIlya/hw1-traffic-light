//
//  ViewController.swift
//  hw1 traffic light
//
//  Created by admin2 on 21.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var selected = 1

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var lightSwitcher: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightSetup(light: redLight, color: UIColor.red)
        lightSetup(light: yellowLight, color: UIColor.yellow)
        lightSetup(light: greenLight, color: UIColor.green)
    }
    
    func lightSetup(light: UIView!, color: UIColor) -> Void {
        light.backgroundColor = color
        light.alpha = 0.3
        light.center.x = view.center.x
        light.layer.cornerRadius = 50
    }
    
    @IBAction func switchLight() {
        lightSwitcher.setTitle("Next", for: .normal)
        switch selected {
        case 1:
            greenLight.alpha = 0.3
            redLight.alpha = 1
        case 2:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        case 3:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        default:
            selected += 1
        }
        selected += 1
        if selected > 3 {
            selected = 1
        }
    }
}
