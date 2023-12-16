//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Mohit Tomer on 16/12/23.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red.gradient)
            .foregroundColor(Color(.label))
            .clipShape(.rect(cornerRadius: 8))
    }
}

#Preview {
    AFButton(title: "Test Title")
}
