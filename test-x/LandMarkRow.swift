//
//  LandMarkRow.swift
//  test-x
//
//  Created by Atalay Özyıldırım on 26.02.2025.
//

import SwiftUI

struct LandMarkRow: View {
    var landmark : Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}


#Preview {
    Group {
        LandMarkRow(landmark : landmarks[0])
        LandMarkRow(landmark: landmarks[1])
    }
}
