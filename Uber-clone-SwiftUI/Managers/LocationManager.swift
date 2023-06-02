//
//  LocationManager.swift
//  Uber-clone-SwiftUI
//
//  Created by ipeerless on 31/05/2023.
//

import CoreLocation


class LocationManager: NSObject, ObservableObject {
  private let locationManager = CLLocationManager()
   static let shared = LocationManager()
    @Published var userLocation: CLLocationCoordinate2D?
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    }
extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {return}
        self.userLocation = location.coordinate
        locationManager.stopUpdatingLocation()
    }
}