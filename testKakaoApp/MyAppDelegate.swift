//
//  MyAppDelegate.swift
//  testKakaoApp
//
//  Created by Dabo Developer on 2023/10/27.
//

import Foundation
import KakaoSDKCommon
import UIKit


class MyAppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        // Kakao SDK init
        let kakaoAppKey: String = (Bundle.main.infoDictionary?["NATIVE_APP_KEY"] as! String?) ?? ""
        KakaoSDK.initSDK(appKey: kakaoAppKey)
        
        return true
    }
    
}
