//
//  ViewController.swift
//  PazhgSoundPlayer
//
//  Created by Pazhg on 2/15/1398 AP.
//  Copyright © 1398 Pazhg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //MARK: - Outlets
    @IBOutlet weak var labelRepeat: UILabel!
    @IBOutlet weak var labelSpeed: UILabel!
    @IBOutlet weak var labelVolume: UILabel!
    
    @IBOutlet weak var segmentAudioFile: UISegmentedControl!
    
    @IBOutlet weak var sliderVolume: UISlider!
    @IBOutlet weak var sliderAudioSetting: UISlider!
    
    @IBOutlet weak var progressDuration: UIProgressView!
    
    @IBOutlet weak var switchRepeat: UISwitch!
    
    @IBOutlet weak var textviewLog: UITextView!
    @IBOutlet weak var stepperSpeed: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelSpeed.text = "Speed: Normal(1.0x)"
        
    }

    //MARK: - Switch
    @IBAction func switchRepeat(_ sender: UISwitch) {
    }
    
    //MARK: - Sliders
    @IBAction func sliderVolume(_ sender: UISlider) {
        labelVolume.text = "Volume: \(Int (sender.value * 100))%"
    }
    @IBAction func sliderAudioSetting(_ sender: UISlider) {
        if sender.value > 0.66 {
            sender.value = 1
        } else if sender.value < 0.33 {
            sender.value = 0
        } else
        {
            sender.value = 0.5
        }
    }
    //MARK: - Stepper
    
    @IBAction func stepperSpeed(_ sender: UIStepper) {
        
        var tempString : String?
        let currentValue : Int = Int ( sender.value )
        
        switch currentValue {
        case 0 :
            tempString = "Very Slow (0.3x)"
        case 1 :
             tempString = "Slow (0.5x)"
        case 2 :
             tempString = "Normal (1.0x)"
        case 3 :
             tempString = "Fast (0.3x)"
        default:
             tempString = "Very Fast (0.3x)"
        }
        labelSpeed.text = "Speed: \(tempString!)"

//        switch stepSpeed {
//        case .veryFast:
//            labelSpeed.text?.append("\(speed.fast)")
//        case .fast:
//            labelSpeed.text?.append("Fast (1.5x)")
//        case .normal:
//            labelSpeed.text?.append("Normal (1x)")
//        case .slow:
//            labelSpeed.text?.append("Slow (0.5x)")
//        case .verySlow:
//            labelSpeed.text?.append("Very Slow (0.1x)")
//        }

    }
    //MARK: - Buttons
   

    @IBAction func buttonPrevious(_ sender: UIButton) {
    }
    
    @IBAction func buttonPlayPause(_ sender: UIButton) {
    }
    
    @IBAction func buttonStop(_ sender: UIButton) {
    }
    
    @IBAction func buttonForward(_ sender: UIButton) {
    }
    
    @IBAction func buttonNext(_ sender: UIButton) {
    }
}

