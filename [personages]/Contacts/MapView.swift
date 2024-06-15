//
//  MapView.swift
//  [personages]
//
//  Created by Карина Дьячина on 15.06.24.
//

import Foundation
import MapKit
import SwiftUI

struct MapView {
    
    let barLocation = CLLocationCoordinate2D(
        latitude: 53.89945582220282,
        longitude: 27.560260128774953)
    
    var body: some View {
        Map() {
            Marker("[Personages] Bar", coordinate: barLocation)
        }
    }
}

#Preview {
    MapView() as! any View
}
