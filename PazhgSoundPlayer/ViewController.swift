//
//  ViewController.swift
//  PazhgSoundPlayer
//
//  Created by Pazhg on 2/15/1398 AP.
//  Copyright © 1398 Pazhg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelRepeat: UILabel!
    @IBOutlet weak var labelSpeed: UILabel!
    @IBOutlet weak var labelVolume: UILabel!
    
    @IBOutlet weak var segmentAudioFile: UISegmentedControl!
    
    @IBOutlet weak var sliderVolume: UISlider!
    @IBOutlet weak var sliderAudioSetting: UISlider!
    
    @IBOutlet weak var progressDuration: UIProgressView!
    
    @IBOutlet weak var switchRepeat: UISwitch!
    
    @IBOutlet weak var textviewLog: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: - Switch
    @IBAction func switchRepeat(_ sender: UISwitch) {
    }
    
    //MARK: - Sliders
    @IBAction func sliderVolume(_ sender: UISlider) {
        labelVolume.text = "Volume: \(Int (sender.value * 100))%"
    }
    @IBAction func sliderAudioSetting(_ sender: UISlider) {
    }
    
    //MARK: - Buttons
    @IBAction func stepperSpeed(_ sender: UIStepper) {
    }

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

