//
//  ViewController.swift
//  FlightBooking
//
//  Created by Qi Jsb on 2018/01/14.
//  Copyright © 2018年 Qi Jsb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var departureDateButton: UIButton!
    @IBOutlet weak var returnDateLabel: UILabel!
    @IBOutlet weak var returnDateButton: UIButton!
    
    @IBOutlet weak var selectDatePicker: UIDatePicker!
    
    var buttonTag:Int = 0
    enum Buttons:Int {
        case Departure = 1
        case Arrival = 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnDateLabel.isHidden = true
        returnDateButton.isHidden = true
        selectDatePicker.isHidden = true
    }

    @IBAction func showDatePickerAction(_ sender: /*Any*/UIButton) {
        buttonTag = sender.tag
        
        if selectDatePicker.isHidden == false {
            selectDatePicker.isHidden = true
        } else {
            selectDatePicker.isHidden = false
        }
    }
    
    @IBAction func showReturnDateAction(_ sender: /*AnyObject*/UISwitch) {
//        print(sender.description)
//        if (sender as! UISwitch).isOn {
//            returnDateButton.isHidden = false
//            returnDateLabel.isHidden = false
//        } else {
//            returnDateButton.isHidden = true
//            returnDateLabel.isHidden = true
//        }
        
        returnDateButton.isHidden = !sender.isOn
        returnDateLabel.isHidden = !sender.isOn
    }
    
    @IBAction func selectedDateAction(_ sender: /*Any*/UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-d hh:mma"
        
        let date: Date = sender.date
        
        let dateString = formatter.string(from: date)
        
        if buttonTag == Buttons.Departure.rawValue {
            departureDateButton.setTitle(dateString, for: UIControlState.normal)
        } else if buttonTag == Buttons.Arrival.rawValue {
            returnDateButton.setTitle(dateString, for: UIControlState.normal)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        selectDatePicker.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

