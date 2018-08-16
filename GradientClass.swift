//
//  GradientClass.swift
//  UIView
//
//  Created by HigherVisibility on 04/08/2018.
//  Copyright © 2018 ahmedHigherVisibility. All rights reserved.
//

import Foundation
@IBDesignable

class GradientView:UIView{
    
    @IBInspectable var firstColor:UIColor = UIColor.clear{
        
        didSet{
            
            updateUI()
            
        }
        
    }
    
    @IBInspectable var secondColor:UIColor = UIColor.clear{
        
        didSet{
            
            updateUI()
            
        }
        
    }
    
    override class var layerClass:AnyClass{
        
        get{
            
            return CAGradientLayer.self
            
        }
    }
    
    func updateUI(){
        
        let layer = self.layer as! CAGradientLayer
        layer.colors = [firstColor,secondColor].map{$0.cgColor}
        
    }
}
