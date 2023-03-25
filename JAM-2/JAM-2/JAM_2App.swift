//
//  JAM_2App.swift
//  JAM-2
//
//  Created by Killian Desserich on 24/03/2023.
//

import SwiftUI

@main
struct JAM_2App: App {
    @StateObject var Infos = infos()
    var body: some Scene {
        
        WindowGroup {
            HomeView()
            .environmentObject(Infos)
        }
    }
}
