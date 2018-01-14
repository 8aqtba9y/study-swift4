//
//  ViewController.swift
//  AppLifeCycle
//
//  Created by Qi Jsb on 2018/01/08.
//  Copyright © 2018年 Qi Jsb. All rights reserved.
//

import UIKit

/**
 * View life cycle:
 *   viewDidLoad()
 *   viewWillAppear()
 *   viewDidAppear()
 *
 * User interaction cycle:
 *   updateViewConstraints()
 *   viewWillLayout()
 *   viewDidLayout()
 *   viewWillDisappear()
 *   viewDidDisappear()
 */
class ViewController: UIViewController {
    
//    override func loadView() {
//        super.loadView()
//        print("loadView")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(self): viewDidLoad")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("\(self): viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("\(self): viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        print("\(self): viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("\(self): viewDidDisappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
