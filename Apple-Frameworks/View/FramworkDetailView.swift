//
//  FramworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Mohit Tomer on 16/12/23.
//

import SwiftUI

struct FramworkDetailView: View {
    
    var framwork: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44 , height: 44)
                }
            }
            Spacer()
            CustomGridView(frameworks: framwork)
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
    FramworkDetailView(framwork: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
