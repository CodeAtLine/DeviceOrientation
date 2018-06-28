//
//  AppDelegate.swift
//  Orientation
//
//  Created by Chintan Dave on 28/06/18.
//  Copyright © 2018 Code@Line. All rights reserved.
//

import UIKit

var orientation:(supported:UIInterfaceOrientationMask, current:UIInterfaceOrientation) = (.portrait, .portrait)
{
  didSet
  {
    UIDevice.current.setValue(orientation.current.rawValue, forKey: "orientation")
  }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
  var window: UIWindow?
  
  func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask
  {
    return orientation.supported
  }
}
