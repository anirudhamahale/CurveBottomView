
//
//  CurveView.swift
//  curveView
//
//  Created by LA Argon on 11/24/16.
//  Copyright © 2016 LA Argon. All rights reserved.
//

import UIKit
let π: CGFloat = CGFloat(M_PI)
@IBDesignable class CurveView: UIView {

    
    override func drawRect(rect: CGRect) {
        //context is the object used for drawing
        let context = UIGraphicsGetCurrentContext()
//        let center = CGPoint(x: bounds.width/2, y: bounds.height+(bounds.width/1.18))
//        let startAngle = 4*π/3
//        let endAngle = 5*π/3
//        let path = UIBezierPath(arcCenter: center, radius: bounds.width, startAngle: startAngle, endAngle: endAngle, clockwise: true)
//        path.lineWidth = 5
//        UIColor.blackColor().setStroke()
//        path.stroke()
//        CGContextSetLineWidth(context, 2)
        CGContextMoveToPoint(context, 0, 0)
        CGContextAddLineToPoint(context, bounds.width, 0)
        CGContextAddLineToPoint(context, bounds.width, bounds.height)
        CGContextAddCurveToPoint(context, bounds.width, bounds.height, bounds.width/2, bounds.height/1.3, 0, bounds.height)
        CGContextAddLineToPoint(context, 0, 0)
//        CGContextSetRGBStrokeColor(context, 0, 0, 0, 1)
        CGContextSetRGBFillColor(context, 0, 153, 102, 51)
        CGContextFillPath(context)
//        CGContextStrokePath(context)
    }
}
