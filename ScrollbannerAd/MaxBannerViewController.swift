//
//  MaxBannerViewController.swift
//  ScrollbannerAd
//
//  Created by Kunal Kishore Sinha on 25/09/23.
//

import AppLovinSDK
import UIKit

class MaxBannerViewController:UITableViewCell
{
    var adView: MAAdView!
    let ad_unit_id = "9a3d68f67b513c28"
    
    

    func createBannerAd()
    {
        adView = MAAdView(adUnitIdentifier: ad_unit_id)
        
        /*adView.delegate = self
    
        // Banner height on iPhone and iPad is 50 and 90, respectively
        let height: CGFloat = (UIDevice.current.userInterfaceIdiom == .pad) ? 90 : 50
    
        // Stretch to the width of the screen for banners to be fully functional
        let width: CGFloat = UIScreen.main.bounds.width
    
        adView.frame = CGRect(x: 320, y: 50, width: width, height: height)
    
        // Set background or background color for banners to be fully functional
        adView.backgroundColor = UIColor.black
    
        view.addSubview(adView)*/
    
        // Load the first ad
        adView.loadAd()
    }

    // MARK: MAAdDelegate Protocol

    func didLoad(_ ad: MAAd) {
        print("Scrollbanner : MAX AD loaded successfully")
    }

    func didFailToLoadAd(forAdUnitIdentifier adUnitIdentifier: String, withError error: MAError) {
        print("Scrollbanner : MAX AD didn't load =>"+error.message)
    }

    func didClick(_ ad: MAAd) {}

    func didFail(toDisplay ad: MAAd, withError error: MAError) {
        print("Scrollbanner : MAX AD failed to display")
    }

    
    // MARK: MAAdViewAdDelegate Protocol

    func didExpand(_ ad: MAAd) {}

    func didCollapse(_ ad: MAAd) {}


    // MARK: Deprecated Callbacks

    func didDisplay(_ ad: MAAd) { /* DO NOT USE - THIS IS RESERVED FOR FULLSCREEN ADS ONLY AND WILL BE REMOVED IN A FUTURE SDK RELEASE */ }
    func didHide(_ ad: MAAd) { /* DO NOT USE - THIS IS RESERVED FOR FULLSCREEN ADS ONLY AND WILL BE REMOVED IN A FUTURE SDK RELEASE */ }
}
