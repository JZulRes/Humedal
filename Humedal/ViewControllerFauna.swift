//
//  ViewControllerFauna.swift
//  Humedal
//
//  Created by JuanFer Zuluaga on 23/06/16.
//  Copyright © 2016 JuanFer Zuluaga. All rights reserved.
//

import UIKit

class ViewControllerFauna: UIViewController {
    
    
    @IBOutlet weak var PersonPato: UIImageView!
    @IBOutlet weak var PersonPato2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 4.0, delay:0, options: [.repeat, .autoreverse], animations: {
            var newCenter = self.PersonPato.center
            newCenter.x += 210
            newCenter.y -= 30
            self.PersonPato.center = newCenter
            }, completion: nil)

        UIView.animate(withDuration: 4.0, delay:0, options: [.repeat, .autoreverse], animations: {
            var newCenter = self.PersonPato2.center
            newCenter.x -= 170
            newCenter.y -= 20
            self.PersonPato2.center = newCenter
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
