//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by diseso software on 15.10.2024.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
