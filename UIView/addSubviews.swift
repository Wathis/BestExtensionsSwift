//
//  addSubviews.swift
//
//  Created by Mathis Delaunay on 04/05/2017.
//  Copyright © 2017 Wathis. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(_ views : [UIView]) {
        for view in views {
            self.addSubview(view)
        }
    }
}
