//
//  ExpTableViewCell.swift
//  CVViewController
//
//  Created by Dejan Arsenijevic on 2019-12-05.
//  Copyright © 2019 Dejan Arsenijevic. All rights reserved.
//

import UIKit

class ExpTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cell_img: UIImageView!
    
    @IBOutlet weak var cell_title: UILabel!
    
    @IBOutlet weak var cell_date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


