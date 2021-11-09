//
//  MapView.swift
//  SwiftUIPizza
//
//  Created by Sean O'Dowd on 11/9/21.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    typealias UIViewType = MKMapView
    
    var latitude:Double
    var longitude:Double
    var regionRadius:Double
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        uiView.setRegion(MKCoordinateRegion(center: coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius),animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        uiView.addAnnotation(annotation)
    }
    
//    static func dismantleUIView(_ uiView: UIViewType, coordinator: Coordinator) {
//        <#code#>
//    }
//
//    func makeCoordinator() -> Coordinator {
//        <#code#>
//    }
}

//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView()
//    }
//}
