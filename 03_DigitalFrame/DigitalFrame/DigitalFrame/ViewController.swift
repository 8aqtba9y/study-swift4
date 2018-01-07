//
//  ViewController.swift
//  DigitalFrame
//
//  Created by Qi Jsb on 2018/01/07.
//  Copyright © 2018年 Qi Jsb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cuteImages = [UIImage.init(named: "1.jpg")!,
                          UIImage.init(named: "2.jpg")!,
                          UIImage.init(named: "3.jpg")!,
                          UIImage.init(named: "4.jpg")!,
                          UIImage.init(named: "5.jpg")!,
                          UIImage.init(named: "6.jpg")!,
                          UIImage.init(named: "7.jpg")!,
                          UIImage.init(named: "8.jpg")!,
                          UIImage.init(named: "9.jpg")!,
                          UIImage.init(named: "10.jpg")!,
                          UIImage.init(named: "11.jpg")!,
                          UIImage.init(named: "12.jpg")!,
                          UIImage.init(named: "13.jpg")!,
                          UIImage.init(named: "14.jpg")!,
                          UIImage.init(named: "15.jpg")!
                          ]
        
        imgView.animationImages = cuteImages
        let speed = Double(speedSlider.value)
        speedLabel.text = String(format: "%.2f", speed)
    }
    
    @IBAction func toggleButton(_ sender: Any) {
        if imgView.isAnimating {
            toggleButton.setTitle("Start", for: UIControlState.normal)
            imgView.stopAnimating()
        } else {
            let speed = Double(speedSlider.value)
            speedLabel.text = String(format: "%.2f", speed)
            imgView.animationDuration = speed
            toggleButton.setTitle("Stop", for: UIControlState.normal)
            imgView.startAnimating()
        }
    }
    
    @IBAction func speedSliderAction(_ sender: Any) {
        let speed = Double(speedSlider.value)
        speedLabel.text = String(format: "%.2f", speed)
        imgView.animationDuration = speed
        toggleButton.setTitle("Stop", for: UIControlState.normal)
        imgView.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

