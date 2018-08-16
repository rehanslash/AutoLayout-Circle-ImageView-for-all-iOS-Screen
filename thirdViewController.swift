//
//  thirdViewController.swift
//  UIView
//
//  Created by HigherVisibility on 14/08/2018.
//  Copyright © 2018 ahmedHigherVisibility. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {

    
    
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.imgView.layer.cornerRadius = self.imgView.frame.size.width/2
        self.imgView.clipsToBounds = true
        // Do any additional setup after loading the view.
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
