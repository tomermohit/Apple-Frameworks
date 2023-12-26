//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Mohit Tomer on 16/12/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
            Spacer()
            GridView(frameworks: viewModel.framework)
                .padding(.bottom, 30)
            Text(viewModel.framework.description)
            Spacer()
            
//            Button(action: {
//                viewModel.isShowingSafariView = true
//            }, label: {
//                AFButton(title: "Learn More")
//            })
            
            // OR ALTERNATIVE WAY EITHER YOU USER BUTTON + SAFARI VIEW OR JUST A LINK😝
            
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!, label: {
                AFButton(title: "Learn More")
            })
        }
        
//        .fullScreenCover(isPresented: $viewModel.isShowingSafariView, content: {
//            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!)
//        })
        .padding()
    }
}

#Preview {
    FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework, isShowingDetailView: .constant(true)))
}
