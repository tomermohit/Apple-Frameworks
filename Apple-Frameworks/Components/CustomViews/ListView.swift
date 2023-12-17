//
//  ListView.swift
//  Apple-Frameworks
//
//  Created by Mohit Tomer on 17/12/23.
//

import SwiftUI


struct ListView: View {
    
    let frameworks: Framework
    var body: some View {
        HStack {
            Image(frameworks.imageName)
                .resizable()
                .frame(width: 60, height: 60)
            Text(frameworks.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .padding()
        }
    }
    
}
