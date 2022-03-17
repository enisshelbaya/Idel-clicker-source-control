package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib;

import android.content.Context;
import android.view.View;
import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.widget.Toast;
import android.widget.AbsoluteLayout;
import android.view.ViewGroup;
import android.widget.Toast;
import java.lang.Exception;
import java.net.URL;
import android.provider.Settings;
import java.util.Map;
import java.util.Arrays;

import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.RequestConfiguration;

import com.google.android.ump.*;//UserMessagingPlatform;
import androidx.annotation.Nullable;

import android.widget.RelativeLayout;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.Gravity;
import androidx.annotation.NonNull;
import android.widget.FrameLayout;

import android.util.Log;

import java.util.List;

import android.util.DisplayMetrics;
import android.view.Display;

public class GoogleMobileAdsGM extends RunnerSocial
{
	private static final int EVENT_OTHER_SOCIAL = 70;
	
	public static Activity activity;
	
	public GoogleMobileAdsGM() 
	{
		activity = RunnerActivity.CurrentActivity;
	}
	
	
	@Override
	public void onStart() 
	{
	}

	@Override
	public void onStop() 
	{
	}
	
	@Override
	public void onPause() 
	{
	}
	
	@Override
	public void onResume()
	{
	}
		
	
	//////////////////////////////////////////////////// GoogleMobileAds ////////////////////////////////////////////////////
	
	public void AdMob_Initialize()
	{
		RunnerActivity.ViewHandler.post( new Runnable() 
		{
			public void run() 
			{
				try{
				//MobileAds.initialize(activity);
				MobileAds.initialize(activity, new OnInitializationCompleteListener() 
				{
					@Override
					public void onInitializationComplete(InitializationStatus initializationStatus) 
					{
						Map<String, AdapterStatus> statusMap = initializationStatus.getAdapterStatusMap();
						for (String adapterClass : statusMap.keySet()) 
						{
							AdapterStatus status = statusMap.get(adapterClass);
							Log.d("yoyo", String.format("Adapter name: %s, Description: %s, Latency: %d",adapterClass, status.getDescription(), status.getLatency()));
						}
						
						// Start loading ads here...
						
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString( dsMapIndex, "type", "AdMob_OnInitialized" );	
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
					}
				});
				}
				catch(Exception e)
				{
					Log.i("yoyo","GoogleMobileAds Init Error: " + e.toString());
					Log.i("yoyo",e.toString());
				}
			}
		});	
	}
	
	public String testDeviceID;
	public void AdMob_SetTestDeviceId()
	{
		testID_on = true;
		MobileAds.setRequestConfiguration(Construct_RequestConfigurationBuilder());
	}

	private AdView adView = null;
	public String bannerID;
	
	public void AdMob_Banner_Init(String bannerID_)
	{
		bannerID = bannerID_;
	}
	
	RelativeLayout layout;
	boolean isSmartBanner;
	public void AdMob_Banner_Create(final double size,final double bottom)
	{
		RunnerActivity.ViewHandler.post(new Runnable() 
		{
			public void run() 
			{
				if(adView != null)
				{
					layout.removeView(adView);
					adView.destroy();
					adView = null;
					
					final ViewGroup rootView = activity.findViewById(android.R.id.content);
					rootView.removeView(layout);
					// layout.destroy();
					layout = null;
				}
				
				layout = new RelativeLayout(activity);
				
				RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
				params.addRule(RelativeLayout.CENTER_HORIZONTAL);
				if(bottom > 0.5)
					params.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
				else
					params.addRule(RelativeLayout.ALIGN_PARENT_TOP);
				
				adView = new AdView(activity);
				
				layout.addView((View)adView,params);
				
				final ViewGroup rootView = activity.findViewById(android.R.id.content);
				rootView.addView((View) layout);
				
				adView.setAdListener(new AdListener()
				{
					@Override
					public void onAdLoaded() 
					{
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_Banner_OnLoaded");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}

					@Override
					public void onAdFailedToLoad(LoadAdError adError) 
					{
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString( dsMapIndex, "type", "AdMob_Banner_OnLoadFailed" );
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
					}

					@Override
					public void onAdOpened() 
					{
						// Code to be executed when an ad opens an overlay that
						// covers the screen.
					}

					@Override
					public void onAdClicked() 
					{
						// Code to be executed when the user clicks on an ad.
					}

					@Override
					public void onAdClosed() 
					{
						// Code to be executed when the user is about to return
						// to the app after tapping on an ad.
					}
				});
				
				bannerSize = banner_size(size);
				adView.setAdSize(bannerSize);
				adView.setAdUnitId(bannerID);	
				adView.requestLayout();
				adView.setVisibility(View.VISIBLE);

				AdRequest adRequest = new AdRequest.Builder().build();
				adView.loadAd(adRequest);
			}
		});	
	}
	
	public AdSize banner_size(double size)
	{
		switch((int)size)
		{
			case 0: return AdSize.BANNER;
			case 1: return AdSize.LARGE_BANNER;
			case 2: return AdSize.MEDIUM_RECTANGLE;
			case 3: return AdSize.FULL_BANNER;
			case 4: return AdSize.LEADERBOARD;
			case 5: return AdSize.SMART_BANNER;
			case 6: 
					Display display = activity.getWindowManager().getDefaultDisplay();
					DisplayMetrics outMetrics = new DisplayMetrics();
					display.getMetrics(outMetrics);

					float widthPixels = outMetrics.widthPixels;
					float density = outMetrics.density;

					int adWidth = (int) (widthPixels / density);
					
			return AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(activity, adWidth);
		}
		
		return null;
	}
	
	
	AdSize bannerSize = null;
	public double AdMob_Banner_GetWidth()
	{
		if(bannerSize == null)
			return 0;
		
		int w = bannerSize.getWidthInPixels(RunnerJNILib.ms_context); 
		return w;
	}
	
	public double AdMob_Banner_GetHeight()
	{
		if(bannerSize == null)
			return 0;
		
		int h = bannerSize.getHeightInPixels(RunnerJNILib.ms_context);
		if(bannerSize == AdSize.SMART_BANNER)
		{
			DisplayMetrics displayMetrics = (RunnerJNILib.ms_context).getResources().getDisplayMetrics();
			
			int screenHeightInDP = Math.round(displayMetrics.heightPixels / displayMetrics.density);
			int density = Math.round(displayMetrics.density);
			if (screenHeightInDP < 400)
				h = 32*density;
			else if (screenHeightInDP <= 720)
				h = 50*density;
			else
				h = 90*density;
		}
		return h;
	}
	
	public void AdMob_Banner_Move(final double bottom)
	{
		if(adView != null)
		{
			RunnerActivity.ViewHandler.post(new Runnable() 
			{
				public void run()
				{
					RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
					params.addRule(RelativeLayout.CENTER_HORIZONTAL);
					if(bottom > 0.5)
						params.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
					else
						params.addRule(RelativeLayout.ALIGN_PARENT_TOP);
					
					adView.setLayoutParams(params);
				}
			});
		}
	}
	
	public void AdMob_Banner_Show()
    {
        RunnerActivity.ViewHandler.post( new Runnable() 
		{
            public void run() 
            {
                if(adView!=null)
                    adView.setVisibility(View.VISIBLE);
            }
        });
    }
    
    public void AdMob_Banner_Hide()
    {
        RunnerActivity.ViewHandler.post( new Runnable() 
		{
            public void run() 
            {
                if(adView!=null)
                    adView.setVisibility(View.GONE);
            }
        });
    }

	
	public void AdMob_Banner_Remove()
	{
		RunnerActivity.ViewHandler.post( new Runnable() 
		{
			public void run() 
		    {
				if(adView != null)
				{
					AdSize bannerSize = null;
					
					layout.removeView(adView);
					adView.destroy();
					adView = null;
					
					final ViewGroup rootView = activity.findViewById(android.R.id.content);
					rootView.removeView(layout);
					// layout.destroy();
					layout = null;
				}
		    }
		});
	}
	
	private InterstitialAd mInterstitialAd = null;
	private String mInterstitialID = null;
	public void AdMob_Interstitial_Init(String interstitialID)
	{
		mInterstitialID = interstitialID;
	}
	
	public void AdMob_Interstitial_Load()
	{
		if(mInterstitialAd == null)
		RunnerActivity.ViewHandler.post( new Runnable() 
		{
			public void run() 
			{
				AdRequest adRequest = new AdRequest.Builder().build();

				InterstitialAd.load(activity,mInterstitialID, adRequest, new InterstitialAdLoadCallback() 
				{
					@Override
					public void onAdLoaded(@NonNull InterstitialAd interstitialAd) 
					{
						mInterstitialAd = interstitialAd;
						
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_Interstitial_OnLoaded");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}

					@Override
					public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) 
					{
						mInterstitialAd = null;
						
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_Interstitial_OnLoadFailed");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}
				});
			}
		});
	}
	
	public void AdMob_Interstitial_Show()
	{
		if(mInterstitialAd == null)
			return;
		
		RunnerActivity.ViewHandler.post(new Runnable() 
		{
			public void run() 
			{
				mInterstitialAd.setFullScreenContentCallback(new FullScreenContentCallback()
				{
					@Override
					public void onAdDismissedFullScreenContent() 
					{
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_Interstitial_OnDismissed");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}

					@Override
					public void onAdFailedToShowFullScreenContent(AdError adError) 
					{
						mInterstitialAd = null;
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_Interstitial_OnShowFailed");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}

					@Override
					public void onAdShowedFullScreenContent() 
					{
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_Interstitial_OnFullyShown");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}
				});
				
				mInterstitialAd.show(activity);
				mInterstitialAd = null;
			}
		});
	}
	
	public double AdMob_Interstitial_IsLoaded()
	{
		if(mInterstitialAd == null)
			return 0.0;
		
		return 1.0;
	}
	
	public RewardedAd rewardedAd = null;
	public String rewardedAdID = null;
	public void AdMob_RewardedVideo_Init(String AdId)
	{
		rewardedAdID = AdId;
	}
	
	public void AdMob_RewardedVideo_Load()
	{
		if(rewardedAd == null)
		RunnerActivity.ViewHandler.post(new Runnable()
		{
			public void run() 
			{
				AdRequest adRequest = new AdRequest.Builder().build();

				RewardedAd.load(activity,rewardedAdID,adRequest, new RewardedAdLoadCallback()
				{
					@Override
					public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) 
					{
						rewardedAd = null;
						
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_RewardedVideo_OnLoadFailed");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}

					@Override
					public void onAdLoaded(@NonNull RewardedAd rewardedAd_)
					{
						rewardedAd = rewardedAd_;
						
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_RewardedVideo_OnLoaded");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}
				});
			}
		});
	}
	
	public void AdMob_RewardedVideo_Show()
	{
		if(rewardedAd == null)
			return;
		
		RunnerActivity.ViewHandler.post(new Runnable()
		{
			public void run() 
			{
				rewardedAd.setFullScreenContentCallback(new FullScreenContentCallback()
				{
					@Override
					public void onAdDismissedFullScreenContent() 
					{
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_RewardedVideo_OnDismissed");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}

					@Override
					public void onAdFailedToShowFullScreenContent(AdError adError) 
					{
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_RewardedVideo_OnShowFailed");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}

					@Override
					public void onAdShowedFullScreenContent() 
					{
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_RewardedVideo_OnFullyShown");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}
				});
				
				rewardedAd.show(activity, new OnUserEarnedRewardListener() 
				{
					@Override
					public void onUserEarnedReward(@NonNull RewardItem rewardItem) 
					{
						int rewardAmount = rewardItem.getAmount();
						String rewardType = rewardItem.getType();
						
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_RewardedVideo_OnReward");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}
				});
				rewardedAd = null;
			}
		});
	}
	
	public double AdMob_RewardedVideo_IsLoaded()
	{
		if(rewardedAd == null)
			return 0.0;
		
		return 1.0;
	}
	
	
	public RewardedInterstitialAd rewardedInterstitialAd = null;
	public String rewardedInterstitialAdID = null;
	public void AdMob_RewardedInterstitial_Init(String AdId)
	{
		rewardedInterstitialAdID = AdId;
	}

	public void AdMob_RewardedInterstitial_Load()
	{
		if(rewardedInterstitialAd == null)
			RunnerActivity.ViewHandler.post(new Runnable()
			{
				public void run()
				{
					AdRequest adRequest = new AdRequest.Builder().build();

					RewardedInterstitialAd.load(activity,rewardedInterstitialAdID,adRequest, new RewardedInterstitialAdLoadCallback()
					{
						@Override
						public void onAdFailedToLoad(@NonNull LoadAdError loadAdError)
						{
							rewardedInterstitialAd = null;

							int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
							RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_RewardedInterstitial_OnLoadFailed");
							RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
						}

						@Override
						public void onAdLoaded(@NonNull RewardedInterstitialAd rewardedInterstitialAd_)
						{
							rewardedInterstitialAd = rewardedInterstitialAd_;

							int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
							RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_RewardedInterstitial_OnLoaded");
							RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
						}
					});
				}
			});
	}


	public void AdMob_RewardedInterstitial_Show()
	{
		if(rewardedInterstitialAd == null)
			return;

		RunnerActivity.ViewHandler.post(new Runnable()
		{
			public void run()
			{
				rewardedInterstitialAd.setFullScreenContentCallback(new FullScreenContentCallback()
				{
					@Override
					public void onAdDismissedFullScreenContent()
					{
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_RewardedInterstitial_OnDismissed");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}

					@Override
					public void onAdFailedToShowFullScreenContent(AdError adError)
					{
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_RewardedInterstitial_OnShowFailed");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}

					@Override
					public void onAdShowedFullScreenContent()
					{
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_RewardedInterstitial_OnFullyShown");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}
				});

				rewardedInterstitialAd.show(activity, new OnUserEarnedRewardListener()
				{
					@Override
					public void onUserEarnedReward(@NonNull RewardItem rewardItem)
					{
						int rewardAmount = rewardItem.getAmount();
						String rewardType = rewardItem.getType();

						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_RewardedInterstitial_OnReward");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}
				});
				rewardedInterstitialAd = null;
			}
		});
	}
	
	public double AdMob_RewardedInterstitial_IsLoaded()
	{
		if(rewardedInterstitialAd == null)
			return 0.0;

		return 1.0;
	}
	
	public void AdMob_Targeting_COPPA(double COPPA)
	{
		targetCOPPA = COPPA > 0.5;
		MobileAds.setRequestConfiguration(Construct_RequestConfigurationBuilder());
	}
	
	public void AdMob_Targeting_UnderAge(double underAge)
	{
		targetUnderAge = underAge >= 0.5;
		MobileAds.setRequestConfiguration(Construct_RequestConfigurationBuilder());
	}
	
	public void AdMob_Targeting_MaxAdContentRating(double contentRating)
	{
		switch((int)contentRating)
		{
			case 0: targetG = true; break;
			case 1: targetPG = true; break;
			case 2: targetT = true; break;
			case 3: targetMA = true; break;
		}
		MobileAds.setRequestConfiguration(Construct_RequestConfigurationBuilder());
	}
	
	
	public boolean testID_on = false;
	public boolean targetCOPPA = false;
	public boolean targetUnderAge = false;
	public boolean targetG = false;
	public boolean targetPG = false;
	public boolean targetT = false;
	public boolean targetMA = false;
	public RequestConfiguration Construct_RequestConfigurationBuilder()//(test,targetCOPPA,targetUnderAge,targetG,targetPG,targetT,targetMA)
	{
		RequestConfiguration.Builder mRequestConfiguration = new RequestConfiguration.Builder();
		
		if(testID_on)
		{
			List<String> testDeviceIds = Arrays.asList(getDeviceID());
			mRequestConfiguration = mRequestConfiguration.setTestDeviceIds(testDeviceIds);
		}
		
		if(targetCOPPA)
			mRequestConfiguration = mRequestConfiguration.setTagForChildDirectedTreatment(/*RequestConfiguration.TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE*/1);
		else
			mRequestConfiguration = mRequestConfiguration.setTagForChildDirectedTreatment(/*RequestConfiguration.TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE*/0);
		
		if(targetUnderAge)
			mRequestConfiguration = mRequestConfiguration.setTagForUnderAgeOfConsent(/*RequestConfiguration.TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE*/1);
		else
			mRequestConfiguration = mRequestConfiguration.setTagForUnderAgeOfConsent(/*RequestConfiguration.TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE*/0);
		
		if(targetG)
			mRequestConfiguration = mRequestConfiguration.setMaxAdContentRating(/*RequestConfiguration.MAX_AD_CONTENT_RATING_G*/"G");
	
		if(targetPG)
			mRequestConfiguration = mRequestConfiguration.setMaxAdContentRating(/*RequestConfiguration.MAX_AD_CONTENT_RATING_PG*/"PG");
		
		if(targetT)
			mRequestConfiguration = mRequestConfiguration.setMaxAdContentRating(/*RequestConfiguration.MAX_AD_CONTENT_RATING_T*/"T");	
		
		if(targetMA)
			mRequestConfiguration = mRequestConfiguration.setMaxAdContentRating(/*RequestConfiguration.MAX_AD_CONTENT_RATING_MA*/"MA");
		
		return mRequestConfiguration.build();
	}
	
	private void AdMob_AdRequest()
	{
		//null on Android....
	}

	public String getDeviceID()
	{
		String android_id = Settings.Secure.getString(activity.getContentResolver(), Settings.Secure.ANDROID_ID);
		String deviceId = MD5(android_id).toUpperCase();
		return deviceId;
	}
	
	//https://stackoverflow.com/questions/4846484/md5-hashing-in-android/21333739#21333739
	public String MD5(String md5) 
	{
	   try 
	   {
			java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
			byte[] array = md.digest(md5.getBytes("UTF-8"));
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < array.length; ++i) 
			{
			  sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100).substring(1,3));
			}
			return sb.toString();
		} 
		catch (Exception e) 
		{
			return null;
		}
	}
	
	//EU Consent: https://developers.google.com/admob/android/eu-consent
	
	public ConsentInformation consentInformation;
	public void AdMob_Consent_RequestInfoUpdate(double mode)
	{
		ConsentRequestParameters.Builder builder = new ConsentRequestParameters.Builder();
		
		if(mode != 3)
		{
			ConsentDebugSettings debugSettings = new ConsentDebugSettings.Builder(activity)
				.setDebugGeography((int) mode)//ConsentDebugSettings.DebugGeography.DEBUG_GEOGRAPHY_EEA)
				.addTestDeviceHashedId(getDeviceID())
				.build();
			
			builder = builder.setConsentDebugSettings(debugSettings);
		}
		
		ConsentRequestParameters params  = builder.build();

        consentInformation = UserMessagingPlatform.getConsentInformation(activity);
        consentInformation.requestConsentInfoUpdate(activity,params,new ConsentInformation.OnConsentInfoUpdateSuccessListener() 
		{
			@Override
			public void onConsentInfoUpdateSuccess() 
			{
				int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
				RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_Consent_OnRequestInfoUpdated");
				RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
			}
		},
		new ConsentInformation.OnConsentInfoUpdateFailureListener() 
		{
			@Override
			public void onConsentInfoUpdateFailure(FormError formError)
			{
				int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
				RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_Consent_OnRequestInfoUpdateFailed");
				RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
			}
		});
	}
	
	public double AdMob_Consent_GetStatus()
	{
		return (double) consentInformation.getConsentStatus();
	}
	
	public double AdMob_Consent_GetType()
	{
		return (double) consentInformation.getConsentType();
	}
	
	public double AdMob_Consent_IsFormAvailable()
	{
		if(consentInformation.isConsentFormAvailable())
			return 1.0;
		else
			return 0.0;
	}
	
	public ConsentForm consentForm;
	public void AdMob_Consent_Load()
	{
		RunnerActivity.ViewHandler.post(new Runnable()
		{
			public void run() 
			{
				UserMessagingPlatform.loadConsentForm(activity,new UserMessagingPlatform.OnConsentFormLoadSuccessListener() 
				{
					@Override
					public void onConsentFormLoadSuccess(ConsentForm consent_form) 
					{
						consentForm = consent_form;
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_Consent_OnLoaded");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}
				},
				new UserMessagingPlatform.OnConsentFormLoadFailureListener() 
				{
					@Override
					public void onConsentFormLoadFailure(FormError formError) 
					{
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_Consent_OnLoadFailed");
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
					}
				});
			}
		});
	}
	
	public void AdMob_Consent_Show()
	{
		RunnerActivity.ViewHandler.post(new Runnable()
		{
			public void run() 
			{
				consentForm.show(activity,new ConsentForm.OnConsentFormDismissedListener() 
				{
					@Override
					public void onConsentFormDismissed(@Nullable FormError formError) 
					{
						
						
						if (formError == null)
						{
							int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
							RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_Consent_OnShown");
							RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
						}
						else
						{
							int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
							RunnerJNILib.DsMapAddString(dsMapIndex,"type","AdMob_Consent_OnShowFailed");
							RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
						}
					}
				});
			}
		});
	}
	
	public void AdMob_Consent_Reset()
	{
		UserMessagingPlatform.getConsentInformation(activity).reset();
	}
	
	public void AdMob_Settings_SetVolume(double value)
	{
		MobileAds.setAppVolume((float) value);
		AdsSoundReLoad();
	}
	
	public void AdMob_Settings_SetMuted(double value)
	{
		MobileAds.setAppMuted(value >= 0.5);
		AdsSoundReLoad();
	}
	
	private void AdsSoundReLoad()
	{
		if(mInterstitialID != null)
		{
			mInterstitialAd = null;
			AdMob_Interstitial_Load();
		}
		
		if(rewardedAdID != null)
		{
			rewardedAd = null;
			AdMob_RewardedVideo_Load();
		}
	}
}	