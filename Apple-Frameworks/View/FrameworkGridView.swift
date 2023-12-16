//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Mohit Tomer on 16/12/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject private var viewModel: FrameworkGridViewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.flexibleColumns) {
                    ForEach(MockData.frameworks) { framework in
                        GridView(frameworks: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FramworkDetailView(framwork: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}


