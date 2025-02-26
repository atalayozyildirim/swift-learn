//
//  LandMarkDetailList.swift
//  test-x
//
//  Created by Atalay Özyıldırım on 26.02.2025.
//

import SwiftUI

struct LandMarkDetailList: View {
    var landmark : Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
               .frame(height: 300)

            VStack(alignment: .leading) {
                Text(landmark.name)
                            .font(.title)


                        HStack {
                            Text(landmark.park)
                            Spacer()
                            Text(landmark.state)
                        }
                        .font(.subheadline)
                        .foregroundStyle(.secondary)


                        Divider()


                Text(landmark.name)
                            .font(.title2)
                Text(landmark.description)
                    }
                    .padding()


                    Spacer()
                }
        .navigationTitle(landmark.name)
        
    }
}

#Preview {
    LandMarkDetailList(landmark: landmarks[0])
}
