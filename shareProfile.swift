
import Foundation
import SwiftUI
import UIKit
// integrate a UIKit view controller in SwiftUI.
struct shareProfile: UIViewControllerRepresentable {
    // The items to be shared.
    var items: [Any]
    // This method creates and configures the `UIActivityViewController`.
    func makeUIViewController(context: Context) -> UIActivityViewController {
        // Initialize the `UIActivityViewController` with the items to share.
        let controller = UIActivityViewController(activityItems: items, applicationActivities: nil)
        return controller
    }

    // This method updates the `UIActivityViewController` when SwiftUI state changes.
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        // No updates needed for this use case.
    }
}

