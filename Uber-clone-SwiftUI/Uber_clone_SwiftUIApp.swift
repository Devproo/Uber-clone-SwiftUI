//
//  Uber_clone_SwiftUIApp.swift
//  Uber-clone-SwiftUI
//
//  Created by ipeerless on 31/05/2023.
//

import SwiftUI

@main
struct Uber_clone_SwiftUIApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
       
    }
}
