//
//  MyAppDelegate.swift
//  testKakaoApp
//
//  Created by Dabo Developer on 2023/10/27.
//

import Foundation
import KakaoSDKCommon
import UIKit
import KakaoSDKAuth

class MyAppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        // Kakao SDK init
        let kakaoAppKey: String = (Bundle.main.infoDictionary?["NATIVE_APP_KEY"] as! String?) ?? ""
        KakaoSDK.initSDK(appKey: kakaoAppKey)
        
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
            if (AuthApi.isKakaoTalkLoginUrl(url)) {
                return AuthController.handleOpenUrl(url: url)
            }

            return false
        }
    
}
