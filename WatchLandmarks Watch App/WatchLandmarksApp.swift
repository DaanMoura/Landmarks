//
//  WatchLandmarksApp.swift
//  WatchLandmarks Watch App
//
//  Created by Daniel Moura on 07/04/23.
//

import SwiftUI

@main
struct WatchLandmarks_Watch_AppApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear ")
    }
}
