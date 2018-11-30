//
//  CustomTableViewCell.swift
//  TableViewHRDKompotRoom
//
//  Created by Vattanac on 11/22/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(text:String,image:UIImage){
        mylabel.text = text
        myImageView.image = image
    }
}
