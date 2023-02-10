//
//  AI_LegendApp.swift
//  AI Legend
//
//  Created by Kaiden Poon on 10/2/2023.
//

import SwiftUI
import GoogleMobileAds

@main
struct AI_LegendApp: App {
    init(){
        GADMobileAds.sharedInstance().start(completionHandler: nil)
    }
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}
