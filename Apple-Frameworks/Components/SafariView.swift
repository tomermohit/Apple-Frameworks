//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Mohit Tomer on 17/12/23.
//

import SwiftUI
import SafariServices


struct SafariView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {

    }

}
