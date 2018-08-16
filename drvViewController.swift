//
//  drvViewController.swift
//  UIView
//
//  Created by HigherVisibility on 13/08/2018.
//  Copyright © 2018 ahmedHigherVisibility. All rights reserved.
//

import UIKit

class drvViewController: UIViewController {

    
    @IBOutlet weak var vehSuperView: GradientView!
    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var drvImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        performSelector(inBackground: #selector(setCircleRadius), with: nil)
    }
    
   @objc func setCircleRadius() {
    
    
    
    DispatchQueue.main.async {
        
        self.ImageView.layer.cornerRadius = self.ImageView.frame.size.width/2
        self.ImageView.clipsToBounds = true
        self.drvImageView.layer.cornerRadius = self.ImageView.frame.size.width/2
        self.drvImageView.clipsToBounds = true
    }
    
        
    }
  
    override func viewWillLayoutSubviews() {
        
//        self.drvImageView.layer.cornerRadius = drvImageView.frame.size.width/2
//        self.drvImageView.clipsToBounds = true
        
    }
   

}
