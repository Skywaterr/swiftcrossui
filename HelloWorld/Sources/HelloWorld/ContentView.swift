import SwiftCrossUI         // Depending on which env we're developing in, you should import the right backend
//import WinUIBackend       // Windows
import AppKitBackend        // MacOS

struct ContentView: View {
    var body: some View {
        GeometryReader {proxy in
        
            let width = Int(proxy.size.width)
            let height = Int(proxy.size.height)

            VStack {
                Text("Hello, World")
                Text("Window size: \(width) \(height)")
                Text(width < 300 ? "Small Window" : "Big Window")
            }        
            .padding()
            .frame(minWidth: proxy.size.width, minHeight: proxy.size.height)
            .background(Color.yellow)
        }
        
    }
}

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup("ContentViewer") {
            ContentView()
        }
        .defaultSize(width: 400, height: 300)
    }
}