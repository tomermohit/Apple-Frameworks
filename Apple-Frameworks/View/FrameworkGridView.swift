//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Mohit Tomer on 16/12/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject private var viewModel: FrameworkGridViewModel = FrameworkGridViewModel()
    @State private var isToggle: Bool = false
    
    var body: some View {
        NavigationStack {
            
            if isToggle {
                List(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) ) {
                        ListView(frameworks: framework)
                    }
                    .listRowBackground(Color.clear)
                    .padding(.leading, -20)
                    .padding(.trailing, -20)
                }
                
                .navigationTitle("🍎 Frameworks")
                .navigationBarItems(trailing:
                                        Toggle("", isOn: $isToggle)
                    .toggleStyle(.switch)
                )
            } else {
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
                .navigationBarItems(trailing:
                                        Toggle("", isOn: $isToggle)
                    .toggleStyle(.switch)
                )
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView) )               }
            }
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}


