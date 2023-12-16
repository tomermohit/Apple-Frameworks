//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Mohit Tomer on 17/12/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {isShowingDetailView = true}
    }
   @Published var isShowingDetailView: Bool = false
    
    let flexibleColumns: [GridItem] = [GridItem(.flexible()),
                                       GridItem(.flexible()),
                                       GridItem(.flexible())]
    
//    let adaptiveColumn: [GridItem] = [GridItem(.adaptive(minimum: 90))]
//
//    let fixedColumn: [GridItem] = [GridItem(.fixed(90)),
//                                   GridItem(.fixed(90)),
//                                   GridItem(.fixed(90))]
}
