//
//  mapViewController.swift
//  locationMap
//
//  Created by Нурсат Шохатбек on 30.12.2023.
//

import UIKit
import MapKit

class mapViewController: UIViewController, CLLocationManagerDelegate, UIGestureRecognizerDelegate, MKMapViewDelegate {
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    var mapLocations = Attractions()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mapView.delegate = self
        
        let sourceLocation = CLLocationCoordinate2D(latitude: 41.9005, longitude: 12.5012)
        let destinationLocation = CLLocationCoordinate2D(latitude: mapLocations.latitude, longitude: mapLocations.longitude)

        
        
        let sourcePlacemark = MKPlacemark(coordinate: sourceLocation, addressDictionary: nil)
        let destinationPlacemark = MKPlacemark(coordinate: destinationLocation, addressDictionary: nil)
        
        
        let sourceMapItem = MKMapItem(placemark: sourcePlacemark)
        let destinationMapItem = MKMapItem(placemark: destinationPlacemark)
        
        let sourceAnnotation = MKPointAnnotation()
        sourceAnnotation.title = "You are here"
        
        
        if let location = sourcePlacemark.location {
                   sourceAnnotation.coordinate = location.coordinate
                 }
                 
                 
        let destinationAnnotation = MKPointAnnotation()
        destinationAnnotation.title = mapLocations.attraction
                 
        if let location = destinationPlacemark.location {
        destinationAnnotation.coordinate = location.coordinate
     }
        self.mapView.showAnnotations([sourceAnnotation,destinationAnnotation], animated: true )
        let source = CLLocation(latitude: sourceLocation.latitude, longitude: sourceLocation.longitude)
                   
        let destination = CLLocation(latitude: destinationLocation.latitude, longitude: destinationLocation.longitude)
                   
        let kilometers:CLLocationDistance = destination.distance(from: source)
        distanceLabel.text = String(format: "Distance: %.2f km", kilometers/1000)
                  
                  // 7.
        let directionRequest = MKDirections.Request()
        directionRequest.source = sourceMapItem
        directionRequest.destination = destinationMapItem
        directionRequest.transportType = .walking
                  
                  // Calculate the direction
        let directions = MKDirections(request: directionRequest)
        directions.calculate {
            (response, error) -> Void in
                    
            guard let response = response else {
              if let error = error {
                print("Error: \(error)")
        }
                      
            return
    }
                    
        let route = response.routes[0]
        self.mapView.addOverlay((route.polyline), level: MKOverlayLevel.aboveRoads)
                    
        let rect = route.polyline.boundingMapRect
        self.mapView.setRegion(MKCoordinateRegion(rect), animated: true)
     }
        
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let renderer = MKPolylineRenderer(overlay: overlay)
        renderer.strokeColor = UIColor.blue
        renderer.lineWidth = 4.0
               
        return renderer
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
