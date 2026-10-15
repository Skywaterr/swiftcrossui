
# MacOS
Install mint and swift-bundler as shown in 
https://docs.swiftcrossui.dev/tutorials/swiftcrossui/quick-start/.
Check that swift-builder is on your $PATH before continuing.

Make sure that the line that contains AppKitBackend within Package.swift
is uncommented, as well as the import for AppKitBackend within Sources/ContentView.swift.
Comment out anything that calls WinUIBackend.

Run "swift-bundler run" in the same directory as Package.swift in order to build the app.
It will build successfully and try to call other commands that you may not have,
such as codesign on Mac and mt on Windows, but it is okay if they fail.

Once the build is done, run the executable, which will be in ./build/debug.
Closing the executable doesn't seem to kill it currently, so you will have to 
hit Ctrl-C in your terminal.

# Windows
The setup on a Windows system for SwiftCrossUI is on 
https://docs.swiftcrossui.dev/tutorials/swiftcrossui/windows-development.
You will already have downloaded Swift For Windows as they ask.

You will have to build swift-bundler from source, using their git repo at
https://github.com/moreSwift/swift-bundler, by git cloning it somewhere on
your system. Make an environment variable for it on your PATH so that your 
terminal can find it.

Similarly to Mac, make sure that lines containing WinUIBackend is uncommented
in Package.swift and ContentView.swift, and comment out AppKitBackend in both places.

Run "swift-bundler run" in the same directory as Package.swift in order to build the app.
It will take far longer than on a Mac system because of compilation with MSVC (Windows)
tools. Once it's done building, it may call mt on your system and other commands. Even 
if they fail, the build will be successful.

The executable will be in .build/debug, which you can run. Once again, you will need
to hit Ctrl-C in your terminal to fully close the executable.


#swift-bundler
Swift-bundler automates packaging Swift applications for cross-platform use, and it 
is not surprising that SwiftCrossUI decides to use it for compilation. When running
"swift-bundler run" in your terminal, it relies on the existence of the Bundler.toml
file in the same directory to build.