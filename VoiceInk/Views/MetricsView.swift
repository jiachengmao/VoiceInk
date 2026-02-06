import Charts
import KeyboardShortcuts
import SwiftData
import SwiftUI

struct MetricsView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \Transcription.timestamp) private var transcriptions: [Transcription]
    @EnvironmentObject private var whisperState: WhisperState
    @EnvironmentObject private var hotkeyManager: HotkeyManager

    var body: some View {
        VStack {
            MetricsContent(
                transcriptions: Array(transcriptions)
            )
        }
        .background(Color(.controlBackgroundColor))
    }
}
