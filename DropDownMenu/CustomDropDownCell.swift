//
//  CustomDropDownCell.swift
//  DropDownMenu
//
//  Created by ABDELAZiZ EL ARASSi on 8/6/2022.
//

import DropDown
import UIKit

class CustomDropDownCell: DropDownCell {
    
    @IBOutlet weak var labelCell: UILabel!
    @IBOutlet weak var iconCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        iconCell.contentMode = .scaleAspectFit
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
