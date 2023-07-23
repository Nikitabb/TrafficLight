//
//  ViewController.swift
//  TrafficLight
//
//  Created by Никита on 20.07.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var RedView: UIView!
    @IBOutlet private var YellowView: UIView!
    @IBOutlet private var GreenView: UIView!
    
    @IBOutlet private var startButton: UIButton!
    
    enum CurrentLight {
        case red
        case yellow
        case green
    }

    
    private var currentLight = CurrentLight.red
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.setTitle("START", for: .normal)
        
        RedView.layer.cornerRadius = RedView.frame.width / 2
        YellowView.layer.cornerRadius = YellowView.frame.width / 2
        GreenView.layer.cornerRadius = GreenView.frame.width / 2
    }
    
    @IBAction func startButtonDidTapped(_ sender: Any) {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            RedView.alpha = lightOn
            YellowView.alpha = lightOff
            GreenView.alpha = lightOff
            
            currentLight = .yellow
        case .yellow:
            RedView.alpha = lightOff
            YellowView.alpha = lightOn
            GreenView.alpha = lightOff
            
            currentLight = .green
        case.green:
            YellowView.alpha = lightOff
            GreenView.alpha = lightOn
            RedView.alpha = lightOff
            
            currentLight = .red
        }
    }
}

