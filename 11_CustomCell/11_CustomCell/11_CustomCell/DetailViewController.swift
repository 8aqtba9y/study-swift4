//
//  DetailViewController.swift
//  11_CustomCell
//
//  Created by Qi Jsb on 2018/03/04.
//  Copyright © 2018年 Qi Jsb. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // 受け取り口
    var detaildata = [String:String]()
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(detaildata)
        
        imgView.layer.cornerRadius = 20.0
        imgView.layer.masksToBounds = true
        imgView.image = UIImage(named: detaildata["image"]!)
        
        nameLabel.text = detaildata["name"]
        amountLabel.text = detaildata["amount"]
        valueLabel.text = detaildata["value"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
