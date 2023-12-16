//
//  GridView.swift
//  Apple-Frameworks
//
//  Created by Mohit Tomer on 16/12/23.
//

import SwiftUI

struct GridView: View {
    
    let frameworks: Framework
    var body: some View {
        VStack {
            Image(frameworks.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(frameworks.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding()
    }
    
}
