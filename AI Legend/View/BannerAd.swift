//
//  BannerAd.swift
//  AI Legend
//
//  Created by Kaiden Poon on 10/2/2023.
//

import SwiftUI
import GoogleMobileAds

struct BannerAd:UIViewRepresentable{
    let screenSize = UIScreen.main.bounds.size
    var unitID:String
    
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
    
    func makeUIView(context: Context) -> GADBannerView {
//        let adSize = GADAdSizeFromCGSize(CGSize(width: screenSize.width, height: 50))
        let adView = GADBannerView(adSize: GADAdSizeBanner)
        adView.adUnitID = unitID
        adView.rootViewController = UIApplication.shared.getRootViewController()
        adView.delegate = context.coordinator
        adView.load(GADRequest())
        return adView
    }
    
    func updateUIView(_ uiView: GADBannerView, context: Context) {
        
    }
    
    class Coordinator:NSObject, GADBannerViewDelegate{
        func bannerViewDidReceiveAd(_ bannerView: GADBannerView) {
          print("bannerViewDidReceiveAd")
        }

        func bannerView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: Error) {
          print("bannerView:didFailToReceiveAdWithError: \(error.localizedDescription)")
        }

        func bannerViewDidRecordImpression(_ bannerView: GADBannerView) {
          print("bannerViewDidRecordImpression")
        }

        func bannerViewWillPresentScreen(_ bannerView: GADBannerView) {
          print("bannerViewWillPresentScreen")
        }

        func bannerViewWillDismissScreen(_ bannerView: GADBannerView) {
          print("bannerViewWillDIsmissScreen")
        }

        func bannerViewDidDismissScreen(_ bannerView: GADBannerView) {
          print("bannerViewDidDismissScreen")
        }
    }
    //END
}

extension UIApplication{
    func getRootViewController() -> UIViewController{
        guard let screen = self.connectedScenes.first as? UIWindowScene else { return .init()}
        
        guard let root = screen.windows.first?.rootViewController else {return .init()}
        
        return root
    }
}
