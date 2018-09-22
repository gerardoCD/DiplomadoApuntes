//
//  FishesViewCell.swift
//  plasticfishes-mvc
//
//  Created by Gerardo Castillo on 21/09/18.
//  Copyright © 2018 Luis Ezcurdia. All rights reserved.
//

import UIKit

class FishesViewCell: UITableViewCell {

    @IBOutlet weak var fishImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
