//
//  WatchWeatherAppApp.swift
//  WatchWeatherApp WatchKit Extension
//
//  Created by yeekim on 2022/08/09.
//

import SwiftUI

@main
struct WatchWeatherAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
//                ContentView()
                WatchWeatherView()
            }
        }
    }
}
