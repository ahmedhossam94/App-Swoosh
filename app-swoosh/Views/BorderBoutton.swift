//
//  BorderBoutton.swift
//  app-swoosh
//
//  Created by egy10 on 1/14/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class BorderBoutton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3
        layer.borderColor = UIColor.white.cgColor
    }
}
