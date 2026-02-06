import AppKit
import Foundation
import SelectedTextKit

class SelectedTextService {
    static func fetchSelectedText() async -> String? {
        let strategies: [TextStrategy] = [.accessibility, .menuAction]
        do {
            return try await SelectedTextManager.shared.getSelectedText(strategies: strategies)
        } catch {
            print("Failed to get selected text: \(error)")
            return nil
        }
    }
}
