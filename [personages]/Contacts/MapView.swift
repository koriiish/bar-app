//
//  MapView.swift
//  [personages]
//
//  Created by Карина Дьячина on 15.06.24.
//

import Foundation
import MapKit
import SwiftUI

struct MapView: View {
    
    let barLocation = CLLocationCoordinate2D(
        latitude: 53.899323043511544,
        longitude: 27.559927532212363)
    
    var body: some View {
        Map() {
            Marker("[Personages] Bar", systemImage: "figure.wave", coordinate: barLocation)
                .tint(Color.accentColor)
        }
        .mapStyle(.standard)
    }
}

#Preview {
    MapView()
}
