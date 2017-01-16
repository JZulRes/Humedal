//
//  ViewControllerAgua.swift
//  Humedal
//
//  Created by JuanFer Zuluaga on 23/06/16.
//  Copyright © 2016 JuanFer Zuluaga. All rights reserved.
//

import UIKit

class ViewControllerAgua: UIViewController, UIViewControllerTransitioningDelegate {
    
    
    @IBOutlet weak var Nubes: UIImageView!
    
    @IBOutlet weak var Nubes2: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 4.5, delay:0, options: [.repeat, .autoreverse], animations: {
            var newCenter = self.Nubes.center
            newCenter.x -= 190
            self.Nubes.center = newCenter
            }, completion: nil)
        
        UIView.animate(withDuration: 4.0, delay:0, options: [.repeat, .autoreverse], animations: {
            var newCenter = self.Nubes2.center
            newCenter.x += 90
            self.Nubes2.center = newCenter
            }, completion: nil)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ExitButton(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    

   
}
