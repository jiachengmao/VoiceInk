import Foundation
import AppKit

@MainActor
class LicenseViewModel: ObservableObject {
    enum LicenseState: Equatable {
        case licensed
    }
    
    @Published private(set) var licenseState: LicenseState = .licensed
    @Published var licenseKey: String = ""
    @Published var isValidating = false
    @Published var validationMessage: String?
    @Published private(set) var activationsLimit: Int = 0
    
    init() {
        // No initialization needed for always-licensed state
    }
    
    func startTrial() {
        // No-op
    }
    
    var canUseApp: Bool {
        return true
    }
    
    func openPurchaseLink() {
        // No-op or keep if needed for other reasons, but likely not needed for a free app.
        // Keeping empty implementation to avoid breaking call sites immediately.
    }
    
    func validateLicense() async {
        // No-op
    }
    
    func removeLicense() {
        // No-op
    }
}
