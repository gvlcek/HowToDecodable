//
//  WeatherCell.swift
//  WeatherApp
//
//  Created by Guadalupe Vlcek on 27/10/2018.
//  Copyright © 2018 Guadalupe Vlček. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    
    static let identifier = "WeatherCell"

    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
