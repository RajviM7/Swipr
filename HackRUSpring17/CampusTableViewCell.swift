//
//  CampusTableViewCell.swift
//  HackRUSpring17
//
//  Created by Rajvi Mehta on 4/23/17.
//  Copyright © 2017 Rajvi Mehta. All rights reserved.
//

import UIKit
import SwiftyJSON


class CampusTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    var menuData:JSON = nil;
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setUpCell(name: String, menuData:JSON) {
        title.text = name
        self.menuData = menuData;
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
