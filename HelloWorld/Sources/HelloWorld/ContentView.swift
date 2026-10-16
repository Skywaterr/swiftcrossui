import SwiftCrossUI         // Depending on which env we're developing in, you should import the right backend
import WinUIBackend         // Windows
//import AppKitBackend      // MacOS

// I think the next thing I'm doing is to write a button
// that affects the positioning of itself or another widget

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
            .frame(minWidth: proxy.size.width / 2, minHeight: proxy.size.height)
            .background(Color.teal)
        }
        
    }
}

struct SplitView: View {
    var body: some View {
        NavigationSplitView {
            Text("Primary")
        } detail: {
            Text("Secondary")
        }
    }
}
