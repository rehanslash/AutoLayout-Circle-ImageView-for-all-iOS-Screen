//
//  ViewController.swift
//  UIView
//
//  Created by HigherVisibility on 04/08/2018.
//  Copyright © 2018 ahmedHigherVisibility. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var drvPic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        //  self.AddGradientView()
        self.drvPic.layer.cornerRadius = drvPic.frame.size.width/2
        self.drvPic.clipsToBounds = true
    }
    
    func AddGradientView()  {
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = self.view.bounds
        
        let colorOne = UIColor(red: 9/255, green: 135/255, blue: 244/255, alpha: 1.0).cgColor
        
        let colortwo = UIColor(red: 1/255, green: 24/255, blue: 71/255, alpha: 1.0).cgColor
        
        gradientLayer.colors = [colorOne,colortwo]
        
        gradientLayer.locations = [-0.5,0.5]
        
        self.view.layer.addSublayer(gradientLayer)
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

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

