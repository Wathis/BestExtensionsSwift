//
//  setConstraints.swift
//
//  Created by Mathis Delaunay on 2017.
//  Copyright © 2017 Wathis. All rights reserved.
//

import UIKit

// Extension used for constraints
// You will not be obliged to define translatesAutoresizingMaskIntoConstraints = false ( Defined in setConstraints )

extension UIView {
    
    //Function used by all the others
    
    private func setConstraints(top : NSLayoutYAxisAnchor? ,constantTop: CGFloat , bottom : NSLayoutYAxisAnchor? ,constantBottom : CGFloat ,left : NSLayoutXAxisAnchor?,constantLeft: CGFloat, right : NSLayoutXAxisAnchor?, constantRight: CGFloat, centerX: NSLayoutXAxisAnchor?, constantX : CGFloat,centerY: NSLayoutYAxisAnchor?, constantY : CGFloat,width : NSLayoutDimension?, multiplierWidth : CGFloat, constantWidth : CGFloat,height : NSLayoutDimension?, multiplierHeight : CGFloat, constantHeight : CGFloat)  {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if top != nil {
            self.topAnchor.constraint(equalTo: top!,constant: constantTop).isActive = true
        }
        if bottom != nil {
            self.bottomAnchor.constraint(equalTo: bottom!,constant: constantBottom).isActive = true
        }
        if left != nil {
            self.leftAnchor.constraint(equalTo: left!,constant: constantLeft).isActive = true
        }
        if right != nil {
            self.rightAnchor.constraint(equalTo: right!,constant: constantRight).isActive = true
        }
        if centerX != nil {
            self.centerXAnchor.constraint(equalTo: centerX!,constant: constantX).isActive = true
        }
        if centerY != nil {
            self.centerYAnchor.constraint(equalTo: centerY!,constant: constantY).isActive = true
        }
        if width != nil {
            let layoutConstraintWidth = self.widthAnchor.constraint(equalTo: width!,multiplier : multiplierWidth)
            layoutConstraintWidth.constant = constantWidth
            layoutConstraintWidth.isActive = true
        }
        if height != nil {
            let layoutConstraintHeight = self.heightAnchor.constraint(equalTo: height!,multiplier : multiplierHeight)
            layoutConstraintHeight.constant = constantHeight
            layoutConstraintHeight.isActive = true
        }
    }
    
    /**
     
     Set constraints for top, bottom, left and right ( TBLR )
     
     */
    
    func setConstraintsTBLR(top : NSLayoutYAxisAnchor ,constantTop: CGFloat , bottom : NSLayoutYAxisAnchor ,constantBottom : CGFloat ,left : NSLayoutXAxisAnchor,constantLeft: CGFloat, right : NSLayoutXAxisAnchor, constantRight: CGFloat)  {
        self.setConstraints(top: top, constantTop: constantTop, bottom: bottom, constantBottom: constantBottom, left: left, constantLeft: constantLeft, right: right, constantRight: constantRight, centerX: nil, constantX: 0, centerY: nil, constantY: 0, width: nil, multiplierWidth: 0, constantWidth: 0, height: nil, multiplierHeight: 0, constantHeight: 0)
    }
    
    /**
     
     Set constraints for centerX, centerY, width and height ( XYWH )
     
     */
    
    func setConstraintsXYWH(centerX: NSLayoutXAxisAnchor, constantX : CGFloat,centerY: NSLayoutYAxisAnchor, constantY : CGFloat,width : NSLayoutDimension, multiplierWidth : CGFloat, constantWidth : CGFloat,height : NSLayoutDimension, multiplierHeight : CGFloat, constantHeight : CGFloat)  {
        self.setConstraints(top: nil, constantTop: 0, bottom: nil, constantBottom: 0, left: nil, constantLeft: 0, right: nil, constantRight: 0, centerX: centerX, constantX: constantX, centerY: centerY, constantY: constantY, width: width, multiplierWidth: multiplierWidth, constantWidth: constantWidth, height: height, multiplierHeight: multiplierHeight, constantHeight: constantHeight)
    }
    
    /**
     
     Set constraints for centerY, left, width and height ( YLWH )
     
     */
    
    func setConstraintsYLWH(centerY: NSLayoutYAxisAnchor, constantY: CGFloat, left: NSLayoutXAxisAnchor, constantLeft: CGFloat,width : NSLayoutDimension, multiplierWidth : CGFloat, constantWidth : CGFloat,height : NSLayoutDimension, multiplierHeight : CGFloat, constantHeight : CGFloat ) {
        self.setConstraints(top: nil, constantTop: 0, bottom: nil, constantBottom: 0, left: left, constantLeft: constantLeft, right: nil, constantRight: 0, centerX: nil, constantX: 0, centerY: centerY, constantY: constantY, width: width, multiplierWidth: multiplierWidth, constantWidth: constantWidth, height: height, multiplierHeight: multiplierHeight, constantHeight: constantHeight)
    }
    
    /**
     
     Set constraints for centerY , right , width and height ( YRWH )
     
     */
    
    func setConstraintsYRWH(centerY: NSLayoutYAxisAnchor, constantY: CGFloat, right: NSLayoutXAxisAnchor, constantRight: CGFloat,width : NSLayoutDimension, multiplierWidth : CGFloat, constantWidth : CGFloat,height : NSLayoutDimension, multiplierHeight : CGFloat, constantHeight : CGFloat ) {
        self.setConstraints(top: nil, constantTop: 0, bottom: nil, constantBottom: 0, left: nil, constantLeft: 0, right: right, constantRight: constantRight, centerX: nil, constantX: 0, centerY: centerY, constantY: constantY, width: width, multiplierWidth: multiplierWidth, constantWidth: constantWidth, height: height, multiplierHeight: multiplierHeight, constantHeight: constantHeight)
    }
    
    /**
     
     Set constraints for left , top , width and height ( LTWH )
     
     */
    
    func setConstraintsLTWH(left: NSLayoutXAxisAnchor, constantLeft: CGFloat , top: NSLayoutYAxisAnchor, constantTop: CGFloat,width : NSLayoutDimension, multiplierWidth : CGFloat, constantWidth : CGFloat,height : NSLayoutDimension, multiplierHeight : CGFloat, constantHeight : CGFloat ) {
        self.setConstraints(top: top, constantTop: constantTop, bottom: nil, constantBottom: 0, left: left, constantLeft: constantLeft, right: nil, constantRight: 0, centerX: nil, constantX: 0, centerY: nil, constantY: 0, width: width
            , multiplierWidth: multiplierWidth, constantWidth: constantWidth, height: height, multiplierHeight: multiplierHeight, constantHeight: constantHeight)
    }
    
    
    /**
     
     Set constraints for right , top , width and height ( RTWH )
     
     */
    
    func setConstraintsRTWH(right: NSLayoutXAxisAnchor, constantRight: CGFloat , top: NSLayoutYAxisAnchor, constantTop: CGFloat,width : NSLayoutDimension, multiplierWidth : CGFloat, constantWidth : CGFloat,height : NSLayoutDimension, multiplierHeight : CGFloat, constantHeight : CGFloat ) {
        self.setConstraints(top: top, constantTop: constantTop, bottom: nil, constantBottom: 0, left: nil, constantLeft: 0, right: right, constantRight: constantRight, centerX: nil, constantX: 0, centerY: nil, constantY: 0, width: width
            , multiplierWidth: multiplierWidth, constantWidth: constantWidth, height: height, multiplierHeight: multiplierHeight, constantHeight: constantHeight)
    }
    
    
    /**
     
     Set constraints for right , bottom , width and height ( RBWH )
     
     */
    
    
    
    
    func setConstraintsRBWH(right: NSLayoutXAxisAnchor, constantRight: CGFloat , bottom: NSLayoutYAxisAnchor, constantBottom: CGFloat,width : NSLayoutDimension, multiplierWidth : CGFloat, constantWidth : CGFloat,height : NSLayoutDimension, multiplierHeight : CGFloat, constantHeight : CGFloat) {
        self.setConstraints(top: nil, constantTop: 0, bottom: bottom, constantBottom: constantBottom, left: nil, constantLeft: 0, right: right, constantRight: constantRight, centerX: nil, constantX: 0, centerY: nil, constantY: 0, width: width
            , multiplierWidth: multiplierWidth, constantWidth: constantWidth, height: height, multiplierHeight: multiplierHeight, constantHeight: constantHeight)
    }
    
    /**
     
     Set constraints for left , bottom , width and height ( LBWH )
     
     */
    
    
    func setConstraintsLBWH(left: NSLayoutXAxisAnchor, constantLeft: CGFloat , bottom: NSLayoutYAxisAnchor, constantBottom: CGFloat,width : NSLayoutDimension, multiplierWidth : CGFloat, constantWidth : CGFloat,height : NSLayoutDimension, multiplierHeight : CGFloat, constantHeight : CGFloat) {
        self.setConstraints(top: nil, constantTop: 0, bottom: bottom, constantBottom: constantBottom, left: left, constantLeft: constantLeft, right: nil, constantRight: 0, centerX: nil, constantX: 0, centerY: nil, constantY: 0, width: width
            , multiplierWidth: multiplierWidth, constantWidth: constantWidth, height: height, multiplierHeight: multiplierHeight, constantHeight: constantHeight)
    }
    
}
