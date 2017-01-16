//  ViewController.swift
//  Humedal

//  Created by JuanFer Zuluaga on 22/06/16.
//  Copyright © 2016 JuanFer Zuluaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var PersonArbol: UIImageView!
    @IBOutlet weak var PersonAve: UIImageView!
    @IBOutlet weak var PersonGota: UIImageView!
    @IBOutlet weak var Rama1Der: UIImageView!
    @IBOutlet weak var Rama2Der: UIImageView!
    @IBOutlet weak var Rama3Der: UIImageView!
    @IBOutlet weak var Rama3Izq: UIImageView!
    @IBOutlet weak var Rama2Izq: UIImageView!
    @IBOutlet weak var Rama1Izq: UIImageView!
    
    
    let images = [
        UIImage(named: "PersonArbol.png")!,
        UIImage(named: "PersonArbolCerr.png")!]
    var index = 0
    let animationDuration: TimeInterval = 0.20
    let switchingInterval: TimeInterval = 0.25
    
    let imagesAve = [
        UIImage(named: "PersonAve.png")!,
        UIImage(named: "PersonAveCerr.png")!]
    
    let imagesGota = [
        UIImage(named: "PersonGota.png")!,
        UIImage(named: "PersonGotaCerr.png")!]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        animateImageView()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 3.0, delay:0, options: [.repeat, .autoreverse], animations: {
            var newCenter = self.Rama1Der.center
            newCenter.x -= 10
            self.Rama1Der.center = newCenter
            }, completion: nil)
        
        UIView.animate(withDuration: 2.0, delay:0, options: [.repeat, .autoreverse], animations: {
            var newCenter = self.Rama2Der.center
            newCenter.x -= 10
            self.Rama2Der.center = newCenter
            }, completion: nil)
        
        UIView.animate(withDuration: 2.5, delay:0, options: [.repeat, .autoreverse], animations: {
            var newCenter = self.Rama3Der.center
            newCenter.x -= 10
            self.Rama3Der.center = newCenter
            }, completion: nil)
        
        
        UIView.animate(withDuration: 3.0, delay:0, options: [.repeat, .autoreverse], animations: {
            var newCenter = self.Rama1Izq.center
            newCenter.x -= 10
            self.Rama1Izq.center = newCenter
            }, completion: nil)
        
        UIView.animate(withDuration: 2.0, delay:0, options: [.repeat, .autoreverse], animations: {
            var newCenter = self.Rama2Izq.center
            newCenter.x -= 10
            self.Rama2Izq.center = newCenter
            }, completion: nil)
        
        UIView.animate(withDuration: 2.5, delay:0, options: [.repeat, .autoreverse], animations: {
            var newCenter = self.Rama3Izq.center
            newCenter.x -= 10
            self.Rama3Izq.center = newCenter
            }, completion: nil)
  
        
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animateImageView() {
        CATransaction.begin()
        
        CATransaction.setAnimationDuration(animationDuration)
        CATransaction.setCompletionBlock {
            let delay = DispatchTime.now() + Double(Int64(self.switchingInterval * TimeInterval(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
            DispatchQueue.main.asyncAfter(deadline: delay) {
                self.animateImageView()
            }
        }
        
        let transition = CATransition()
        transition.type = kCATransitionFade
        /*
         transition.type = kCATransitionPush
         transition.subtype = kCATransitionFromRight
         */
        PersonArbol.layer.add(transition, forKey: kCATransactionDisableActions)
        PersonArbol.image = images[index]
        
        PersonAve.layer.add(transition, forKey: kCATransactionDisableActions)
        PersonAve.image = imagesAve[index]
        
        PersonGota.layer.add(transition, forKey: kCATransactionDisableActions)
        PersonGota.image = imagesGota[index]
        
        
        
        CATransaction.commit()
        
        index = index < images.count - 1 ? index + 1 : 0
    }


}

