//
//  ViewControllerGpsSector2.swift
//  Humedal
//
//  Created by JuanFer Zuluaga on 28/06/16.
//  Copyright © 2016 JuanFer Zuluaga. All rights reserved.
//

import UIKit
import Foundation
import MapKit
import GLKit
import CoreLocation

class ViewControllerGpsSector2: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate, UIGestureRecognizerDelegate {
    
    
    @IBOutlet weak var MapSector2: MKMapView!
    
    var locationManager = CLLocationManager()
    func checkLocationAuthorizationStatus() {
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            MapSector2.showsUserLocation = true
            
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
    //Radio de vista del punto inicial
    let regionRadius: CLLocationDistance = 420
    func centerMapOnLocation(_ location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
        MapSector2.setRegion(coordinateRegion, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        checkLocationAuthorizationStatus()
        MapSector2.mapType = MKMapType.satellite
        let initialLocation = CLLocation(latitude: 4.705125, longitude: -74.06688888888888)
        centerMapOnLocation(initialLocation)

        
    }

   
    

    
}
