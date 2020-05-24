//
//  MapViewController.swift
//  BackyardHacks
//
//  Created by Mohit on 5/24/20.
//  Copyright © 2020 MoDo. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var dismap: MKMapView!
    
    var locationManager = CLLocationManager()
    let authorizationStatus = CLLocationManager.authorizationStatus()
    let regionRadius: Double = 10000
    
    let annotation1 = MKPointAnnotation()
    let annotation2 = MKPointAnnotation()
    let annotation3 = MKPointAnnotation()

    override func viewDidLoad() {
          super.viewDidLoad()
          dismap.delegate = self
          locationManager.delegate = self
          configureLocationServices()
        
        
        annotation1.coordinate = CLLocationCoordinate2D(latitude: 33.4539, longitude: -111.9534)
        annotation1.title = "AZ Heritage Center at Papago Park"
        annotation1.subtitle = "1300 N College Ave, Tempe, AZ 85281"
        
        annotation2.coordinate = CLLocationCoordinate2D(latitude: 33.4255, longitude: -111.9503)
        annotation2.title = "Jaycee Park"
        annotation2.subtitle = "805 W 5th St, Tempe, AZ 85281"
        
        annotation3.coordinate = CLLocationCoordinate2D(latitude: 33.4272, longitude: -111.9399)
        annotation3.title = "Tempe Public Library"
        annotation3.subtitle = "3500 S Rural Road, Tempe, AZ 85282"
        dismap.addAnnotation(annotation1)
        dismap.addAnnotation(annotation2)
        dismap.addAnnotation(annotation3)
        centerMapOnUserLocation()
      }

      func centerMapOnUserLocation() {
        guard let coordinate = locationManager.location?.coordinate else {return}
        let coordinateRegion = MKCoordinateRegion(center: coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        dismap.setRegion(coordinateRegion, animated: true)
        
            
      }

      func configureLocationServices() {
          if authorizationStatus == .notDetermined {
              locationManager.requestAlwaysAuthorization()
          } else {
              return
          }
      }

      func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
          centerMapOnUserLocation()
      }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
