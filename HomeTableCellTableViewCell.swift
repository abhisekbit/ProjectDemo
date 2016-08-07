//
//  HomeTableCellTableViewCell.swift
//  ProjectDemo
//
//  Created by Abhisek Das on 06/08/16.
//  Copyright © 2016 Abhisek Das. All rights reserved.
//

import UIKit

class HomeTableCellTableViewCell: UITableViewCell {

    //Initialization
    
    
    @IBOutlet weak var lbl_HomeItem: UILabel!
    
    
    @IBOutlet weak var img_Home_color: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
