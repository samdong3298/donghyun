//
//  ViewController.swift
//  ColorSliderQuiz
//
//  Created by Jaehoon Lee on 2021/07/01.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorSwitch.isOn = false
        updateColor()
        updateControls()
    }

    @IBAction func sliderChanged(_ sender: Any) {
        updateColor()
    }
    @IBAction func colorSwitch(_ sender: Any) {
        updateColor()
        updateControls()
    }
    
    func updateColor(){
        var red:CGFloat = 0
        var blue:CGFloat = 0
        var green:CGFloat = 0
        
        if colorSwitch.isOn{
            red = CGFloat(redSlider.value)
            blue = CGFloat(blueSlider.value)
            green = CGFloat(greenSlider.value)
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    func updateControls(){
        redSlider.isEnabled = colorSwitch.isOn
        blueSlider.isEnabled = colorSwitch.isOn
        greenSlider.isEnabled = colorSwitch.isOn
    }
}

