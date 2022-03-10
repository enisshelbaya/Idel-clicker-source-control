
#import <GoogleMobileAds/GoogleMobileAds.h>
#include <UserMessagingPlatform/UserMessagingPlatform.h>
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdSupport/AdSupport.h>

@interface GoogleMobileAdsGM:NSObject <GADBannerViewDelegate,GADFullScreenContentDelegate>
{
    NSMutableDictionary *ListenerMap;
    Boolean testingAds;
}

@property(nonatomic, strong) GADBannerView *bannerView;
@property(nonatomic, strong) GADInterstitialAd*interstitial;
@property(nonatomic, strong) GADInterstitialAd*interstitial_keepMe;
@property(nonatomic, strong) NSString *BannerAdID;
@property(nonatomic, strong) NSString *rewardAdID;
@property(nonatomic, strong) NSString *interstitialAdID;
@property(nonatomic, strong) GADRewardedAd *rewardAd;
@property(nonatomic, strong) GADRewardedAd *rewardAd_keepMe;
@property(nonatomic, strong) NSString *rewardAd_ID;
@property(nonatomic, strong) UMPConsentForm *myForm;

@property(nonatomic, strong) GADRequest *request_interstitial;
@property(nonatomic, strong) GADRequest *request_rewarded;


@end


