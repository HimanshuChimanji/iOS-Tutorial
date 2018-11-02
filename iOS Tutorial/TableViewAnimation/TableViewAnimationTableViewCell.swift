//
//  TableViewAnimationTableViewCell.swift
//  iOS Tutorial
//
//  Created by Himanshu Chimanji on 02/11/18.
//  Copyright © 2018 Talent4assure. All rights reserved.
//

import UIKit

class TableViewAnimationTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var someLbl: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
