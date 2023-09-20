//
//  BannerCell.swift
//  ScrollbannerAd
//
//  Created by Chetan Shanbag on 15/09/23.
//

import UIKit
import HyBid
class BannerCell: UITableViewCell {
    
    var bannerAdView : HyBidAdView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bannerAdView = HyBidAdView(size: HyBidAdSize.size_320x50)
        self.contentView.addSubview(bannerAdView)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func configure(){Slb
        
        bannerAdView!.load(withZoneID: "2", andWith: self)
        
    }
    
}

extension BannerCell : HyBidAdViewDelegate
{
    func adViewDidLoad(_ adView: HyBidAdView!)
    {
        print("Banner Ad View did load:")
    }
    
    func adView(_ adView: HyBidAdView!, didFailWithError error: Error!)
    {
        print("Banner Ad View did fail with error: \(error.localizedDescription)")
    }
    
    func adViewDidTrackClick(_ adView: HyBidAdView!)
    {
        print("Banner Ad View did track click:")
    }
    
    func adViewDidTrackImpression(_ adView: HyBidAdView!)
    {
        print("Banner Ad View did track impression:")
    }
}

