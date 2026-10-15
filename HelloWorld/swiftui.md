

@main App
This is the entry point for any SwiftUI application.

WindowGroup(windowName: String)
Our toplevel window container. The body of this will
hold any View's that we may have or define.

WindowGroup.defaultSize(width: Int, height: Int)
Defines the opening size of the window.

HOOKS
Whenever I do UI design such as with Tkinter, I like to
add hooks to display useful information, such as where my mouse
is relative to the Window, the size of the window, and other things.

GeometryReader 