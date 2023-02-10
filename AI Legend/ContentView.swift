//
//  ContentView.swift
//  AI Legend
//
//  Created by Kaiden Poon on 10/2/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            BannerAd(unitID: "ca-app-pub-3940256099942544/2934735716")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
