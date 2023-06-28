//
//  FructusApp.swift
//  Fructus
//
//  Created by Patrick Masterson on 9/28/22.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                Onboarding()
            } else {
                ContentView()
            }
        }
    }
}

/*
 
 Views
     // UI - what we see
 
 Scenes
    - "Windows"
    - WindowGroup
        - manages windows
    - contains Views
 
@AppStorage - prop wrapper
    - uses UserDefaults
    - small pieces info
    - Store state of our Onboarding
    - updates UI immediately when value changes

 */

    
