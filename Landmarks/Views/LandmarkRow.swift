//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Daniel Moura on 03/04/23.
//

import SwiftUI

let imageSize: CGFloat = 50

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: imageSize, height: imageSize)
                .clipShape(Circle())
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
