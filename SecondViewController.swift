//
//  SecondViewController.swift
//  UIView
//
//  Created by HigherVisibility on 04/08/2018.
//  Copyright © 2018 ahmedHigherVisibility. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var GradientView: UIView!
    
    @IBOutlet weak var vehicleDetail: UILabel!
    
    @IBOutlet weak var drvpic: UIImageView!
    
    @IBOutlet weak var vehImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

     self.updateUI()
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
 
    }
    
    func updateUI()  {
        
        self.vehicleDetail.layer.cornerRadius = 10
        self.vehicleDetail.layer.masksToBounds = true
        print( drvpic.frame.size.width)
        
//        self.drvpic.layer.cornerRadius = drvpic.frame.size.width/3
//        self.drvpic.clipsToBounds = true

        self.vehImg.layer.cornerRadius = 20
        self.vehImg.clipsToBounds = true
        //self.vehImg.layer.borderColor = 3 as! CGColor
        self.vehImg.layer.borderWidth = 1
        self.vehImg.layer.masksToBounds = true
    

        self.drvpic.layer.cornerRadius = 20
        self.drvpic.clipsToBounds = true
        //self.vehImg.layer.borderColor = 3 as! CGColor
        self.drvpic.layer.borderWidth = 1
        self.drvpic.layer.masksToBounds = true
        
    }
    
  
    @IBAction func Done(_ sender: Any) {
        
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "SEC") as! drvViewController
        self.present(nextVC, animated: true, completion: nil)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
