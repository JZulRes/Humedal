//
//  ViewControllerMain2.swift
//  Humedal
//
//  Created by JuanFer Zuluaga on 27/06/16.
//  Copyright © 2016 JuanFer Zuluaga. All rights reserved.
//

import UIKit

class ViewControllerMain2: UIViewController {

    
    @IBOutlet weak var IndicadorSector1: UIImageView!
    @IBOutlet weak var IndicadorSector2: UIImageView!
    @IBOutlet weak var IndicadorSector3: UIImageView!
    @IBOutlet weak var Popup: UIImageView!
    
    @IBOutlet weak var BarAgua: UIImageView!
    @IBOutlet weak var BarArbol: UIImageView!
    @IBOutlet weak var BarFauna: UIImageView!
    
    @IBOutlet weak var ButtonRecorridoSec1: UIButton!
    
    @IBOutlet weak var ButtonRecorridoSec2: UIButton!
    
    @IBOutlet weak var BarAguaSec2: UIImageView!
    @IBOutlet weak var BarArbolSec2: UIImageView!
    @IBOutlet weak var BarFaunaSec2: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    var AppearActionButtonSec1 = false
    
    @IBAction func Sector1(_ sender: AnyObject) {
        BarAguaSec2.image = nil
        BarArbolSec2.image = nil
        BarFaunaSec2.image = nil
        if(Popup.image == nil){
            Popup.image = UIImage(named: "PopupSector1.png")
            IndicadorSector1.image = UIImage(named: "Indicador.png")
            IndicadorSector2.image = nil
            BarAgua.image = UIImage(named: "BarraLarga.png")
            BarArbol.image = UIImage(named: "BarraLarga.png")
            BarFauna.image = UIImage(named: "BarraLarga.png")
            UIView.animate(withDuration: 3.0, delay:0, options: [.curveEaseIn], animations: {
                self.BarAgua.frame = CGRect(x: 190 , y: 85, width: 75, height: 26)
                self.BarArbol.frame = CGRect(x: 190, y: 140, width: 90, height: 26)
                self.BarFauna.frame = CGRect(x: 190, y: 197, width: 100, height: 26)
                }, completion: nil)
            ButtonRecorridoSec1.setImage(UIImage(named: "BotonRecorrido.png"), for: UIControlState())
            AppearActionButtonSec1 = true
            
        }else{
            Popup.image = nil
            IndicadorSector1.image = nil
            BarAgua.image = nil
            BarArbol.image = nil
            BarFauna.image = nil
            ButtonRecorridoSec1.setImage(UIImage(contentsOfFile: ""), for: UIControlState())
            AppearActionButtonSec1 = false

        }
        
    }
    
    @IBAction func ActionButtonSec1(_ sender: AnyObject) {
        if(AppearActionButtonSec1 == true){
            self.performSegue(withIdentifier: "GpsSec1", sender: nil)
        }
        if(AppearActionButtonSec2 == true){
            self.performSegue(withIdentifier: "GpsSec2", sender: nil)
            
        
        }
    }
    
    var AppearActionButtonSec2 = false
    @IBAction func Sector2(_ sender: AnyObject) {
        BarAgua.image = nil
        BarArbol.image = nil
        BarFauna.image = nil
        if(Popup.image == nil){
            Popup.image = UIImage(named: "PopupSector2.png")
            IndicadorSector2.image = UIImage(named: "Indicador.png")
            IndicadorSector1.image = nil
            BarAguaSec2.image = UIImage(named: "BarraExLarga.png")
            BarArbolSec2.image = UIImage(named: "BarraExLarga.png")
            BarFaunaSec2.image = UIImage(named: "BarraExLarga.png")
            UIView.animate(withDuration: 3.0, delay:1, options: [.curveEaseIn], animations: {
                
                self.BarAguaSec2.frame = CGRect(x: 190 , y: 83, width: 118, height: 26)
                self.BarArbolSec2.frame = CGRect(x: 190, y: 137, width: 128, height: 26)
                self.BarFaunaSec2.frame = CGRect(x: 190, y: 193, width: 103, height: 26)
                }, completion: nil)
            ButtonRecorridoSec2.setImage(UIImage(named: "BotonRecorrido.png"), for: UIControlState())
            AppearActionButtonSec2 = true
            
            
        }else{
            Popup.image = nil
            IndicadorSector2.image = nil
            BarAguaSec2.image = nil
            BarArbolSec2.image = nil
            BarFaunaSec2.image = nil
            ButtonRecorridoSec2.setImage(UIImage(contentsOfFile: ""), for: UIControlState())
            AppearActionButtonSec2 = false
            
        }
    }
    
    
    
    
    

}









