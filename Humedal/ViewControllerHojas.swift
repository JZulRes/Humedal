//
//  ViewControllerHojas.swift
//  Humedal
//
//  Created by JuanFer Zuluaga on 23/06/16.
//  Copyright © 2016 JuanFer Zuluaga. All rights reserved.
//

import UIKit

class ViewControllerHojas: UIViewController {
    
    
    @IBOutlet weak var Plantas: UIImageView!
    
    @IBOutlet weak var Tierra: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 0.1, delay:0, options: [.repeat, .autoreverse], animations: {
            var newCenter = self.Tierra.center
            newCenter.x -= 1
            self.Tierra.center = newCenter
            }, completion: nil)
        
        
        UIView.animate(withDuration: 1, delay:0, options: [.repeat, .autoreverse], animations: {
            var newCenter = self.Plantas.center
            newCenter.y += 10
            self.Plantas.center = newCenter
            }, completion: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ExitButton(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    

    

}
