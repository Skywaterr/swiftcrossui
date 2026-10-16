
import SwiftCrossUI         // Depending on which env we're developing in, you should import the right backend
import WinUIBackend       // Windows

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup("ContentViewer") {
            SplitView()
        }
        .defaultSize(width: 800, height: 400)
    }
}