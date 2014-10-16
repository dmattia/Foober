//
//  RequestCell.swift
//  Foober
//
//  Created by David Mattia on 10/14/14.
//  Copyright (c) 2014 David Mattia. All rights reserved.
//

import UIKit

class RequestCell: UITableViewCell {

    @IBOutlet weak var foodLocation: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setRequestCell(restaurant: String, location: String, time: String) {
        self.foodLocation.text = restaurant
        self.location.text = location
        self.timeLabel.text = time
    }
    
}
