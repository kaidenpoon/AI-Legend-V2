//
//  ActivityIndicator.swift
//  AI Legend
//
//  Created by Kaiden Poon on 10/2/2023.
//

import SwiftUI

struct ActivityIndicator: View {
    @State var currentDegress = 0.0
    
    let gradient = LinearGradient(gradient: Gradient(colors: [Color("Viva"),Color("Gradient2").opacity(0.7),Color("Gradient3").opacity(0.5)]), startPoint: .trailing, endPoint: .leading)
    
    var body: some View {
        Circle()
            .trim(from: 0.0,to:0.8)
            .stroke(gradient,style: StrokeStyle(lineWidth: 5,lineCap: .round))
            .frame(width: 40,height: 40,alignment: .center)
            .rotationEffect(Angle(degrees: currentDegress))
            .onAppear(perform: {
                Timer.scheduledTimer(withTimeInterval: 0.02, repeats: true, block: { _ in
                    withAnimation{
                        self.currentDegress += 5
                        
                    }
                })
            })
    }
}

