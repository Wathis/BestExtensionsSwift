//
//  hexRGB.swift
//
//  Created by Mathis Delaunay on 04/05/2017.
//  Copyright © 2017 Wathis. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Rouge invalide")
        assert(green >= 0 && green <= 255, "Vert invalide")
        assert(blue >= 0 && blue <= 255, "Bleu invalide")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
