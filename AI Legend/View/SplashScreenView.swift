//
//  SplashScreenView.swift
//  AI Legend
//
//  Created by Kaiden Poon on 10/2/2023.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive: Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.4
    
    var body: some View {
        if isActive {
            // load main screen after isActive set to true
            Home()
        }else{
            ZStack{
                LinearGradient(colors: [.black, .black], startPoint: .zero, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .center){
                    Spacer()
                    Image("luanchScreen")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width / 1.3, height: UIScreen.main.bounds.width / 1.3)
                    
                    Spacer()
                    Text("Copyright")
                        .font(.body)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .shadow(color: .purple, radius: 10)
                    
                    Text("© 2021 baobeiai Inc.")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .shadow(color: .purple, radius: 10)
                }
                .padding()
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeInOut(duration: 1.5)){
                        self.size = 1.1
                        self.opacity = 1.0
                    }
                }
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
        
    }
    
    //END
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
