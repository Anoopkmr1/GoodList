//
//  ThemeManager.swift
//  GoodList


import Foundation
import UIKit

public enum Colors {
  // Main app colors
  public static let main = #colorLiteral(red: 0.1529411765, green: 0.1529411765, blue: 0.2392156863, alpha: 1)
  public static let mainLight = #colorLiteral(red: 0.2, green: 0.1921568627, blue: 0.3137254902, alpha: 1)
  public static let red = #colorLiteral(red: 0.8078431373, green: 0.3176470588, blue: 0.2901960784, alpha: 1)
  public static let white = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
}

class ThemeManager {
    // setting the navigation Bar and item theme
    static func setup() {
        UINavigationBar.appearance().backgroundColor = UIColor(displayP3Red: 142/255, green: 68/255, blue: 173/255, alpha: 1.0)
        UITableView.appearance().backgroundColor = Colors.white
        UINavigationBar.appearance().barTintColor = UIColor(displayP3Red: 142/255, green: 68/255, blue: 173/255, alpha: 1.0)
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UIBarButtonItem.appearance().tintColor = UIColor.white
    }
    
}
