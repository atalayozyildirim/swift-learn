//
//  LandkMarkList.swift
//  test-x
//
//  Created by Atalay Özyıldırım on 26.02.2025.
//

import SwiftUI

struct LandkMarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks,id : \.id) {landmark in
                NavigationLink {
                    LandMarkDetailList(landmark : landmark)
                }
                label : {
                    LandMarkRow(landmark: landmark)
                }
             
            }
            .navigationTitle("LandMarks")
        }
        detail: {
            Text("Select a LandMark")
        }
    }
}

#Preview {
    LandkMarkList()
}
