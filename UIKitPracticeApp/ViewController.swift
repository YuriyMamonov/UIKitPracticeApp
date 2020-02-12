//
//  ViewController.swift
//  UIKitPracticeApp
//
//  Created by Юрий Мамонов on 12.02.2020.
//  Copyright © 2020 Yuriy Mamonov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    @IBOutlet var mainLabel: UILabel!
    
    @IBOutlet var slider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        Setup main label
        
        
        mainLabel.font = mainLabel.font.withSize(35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        //        Setup Segmented Control
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        //        Setup Slider
        
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
        
        mainLabel.text = String(slider.value)
        
    }
    
    
    @IBAction func changeSegment() {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "The first segment is selected"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "The second segment is selected"
            mainLabel.textColor = .blue
        case 2:
            mainLabel.text = "The third segment is selected"
            mainLabel.textColor = .yellow
        default: break
            
        }
        
    }
    
    @IBAction func sliderAction() {
        
        mainLabel.text = String(slider.value)
        
    }
    
}

