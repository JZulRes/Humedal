//
//  ViewControllerImagenSec2.swift
//  Humedal
//
//  Created by JuanFer on 16/01/17.
//  Copyright © 2017 JuanFer Zuluaga. All rights reserved.
//

import UIKit

class ViewControllerImagenSec2: UIViewController, UIScrollViewDelegate {
    
   
    @IBOutlet weak var exitButton: UIButton!
    var scrollView: UIScrollView!
    var imageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView = UIImageView(image: UIImage(named: "MapaSector2.png"))
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.black
        scrollView.contentSize = imageView.bounds.size
        scrollView.autoresizingMask = UIViewAutoresizing.flexibleWidth
        scrollView.autoresizingMask = UIViewAutoresizing.flexibleHeight
        scrollView.addSubview(imageView)
        view.addSubview(scrollView)
        scrollView.delegate = self
        scrollView.minimumZoomScale = 0.1
        scrollView.maximumZoomScale = 4.0
        scrollView.zoomScale = 0.4
        scrollView.contentOffset = CGPoint(x: 0, y: 2450)
        self.view.bringSubview(toFront: self.exitButton)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    
}
