//
//  MonitorMinderApp.swift
//  MonitorMinder
//
//  Created by Noah King on 26/07/24.
//

import SwiftUI

@main
struct MonitorMinderApp: App {
    var body: some Scene {
        MenuBarExtra("UtilityApp", systemImage: "m.circle") { AppMenu()}
        
        WindowGroup {
            ContentView()
        }
    }
}




struct AppMenu: View {
    func action1() {}
    func action2() {}
    func action3() {}

    var body: some View {
        Button(action: action1, label: { Text("Action 1") })
        Button(action: action2, label: { Text("Action 2") })
        
        Divider()

        Button(action: action3, label: { Text("Action 3") })
    }
}
