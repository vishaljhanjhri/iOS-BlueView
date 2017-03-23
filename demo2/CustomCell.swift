//
//  CustomCell.swift
//  demo2
//
//  Created by Vishal on 24/03/17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
