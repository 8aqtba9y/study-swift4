//
//  CustomCell.swift
//  11_CustomCell
//
//  Created by Qi Jsb on 2018/03/04.
//  Copyright © 2018年 Qi Jsb. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    /// UITableViewCellの awakeFromNibは UIViewControllの viewDidLoadに該当する
    override func awakeFromNib() {
        super.awakeFromNib()
        imgView.contentMode = UIViewContentMode.scaleAspectFill
        imgView.layer.cornerRadius = 50.0
        imgView.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
