//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Mohit Tomer on 16/12/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject private var viewModel: FrameworkGridViewModel = FrameworkGridViewModel()
    
    let flexibleColumns: [GridItem] = [GridItem(.flexible()),
                                       GridItem(.flexible()),
                                       GridItem(.flexible())]
    
//    let adaptiveColumn: [GridItem] = [GridItem(.adaptive(minimum: 90))]
//    
//    let fixedColumn: [GridItem] = [GridItem(.fixed(90)),
//                                   GridItem(.fixed(90)),
//                                   GridItem(.fixed(90))]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: flexibleColumns) {
                    ForEach(MockData.frameworks) { framework in
                        CustomGridView(frameworks: framework)
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


