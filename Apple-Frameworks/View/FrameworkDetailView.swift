//
//  FramworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Mohit Tomer on 16/12/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framwork: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            GridView(frameworks: framwork)
                .padding(.bottom, 30)
            Text(framwork.description)
            Spacer()
            Button(action: {
                isShowingSafariView = true
            }, label: {
                AFButton(title: "Learn More")
            })
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framwork.urlString) ?? URL(string: "www.apple.com")!)
        })
        .padding()
    }
}

#Preview {
    FrameworkDetailView(framwork: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
