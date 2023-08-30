//
//  SettingsCell.swift
//  SettingsDemo
//
//  Created by Subin Kumar on 30/08/23.
//

import UIKit

class SettingsCell: UITableViewCell {
    
    @IBOutlet weak var CustomImageView: UIImageView!
    
    @IBOutlet weak var CustomLabelView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
