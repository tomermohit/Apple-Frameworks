//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Mohit Tomer on 17/12/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
   @Published var isShowingDetailView: Bool = false
}
