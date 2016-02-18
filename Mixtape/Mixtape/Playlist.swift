//
//  Playlist.swift
//  Mixtape
//
//  Created by Evan Turner on 2/18/16.
//  Copyright © 2016 Evan Turner. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {
  var title: String?
  var description: String?
  var icon: UIImage?
  var largeIcon: UIImage?
  var artists: [String] = []
  var backgroundColor: UIColor = UIColor.clearColor()
  
  init(index: Int) {
    let musicLibrary = MusicLibrary().library
    let playListDictionary = musicLibrary[index]
    
    title = playListDictionary["title"] as? String!
    description = playListDictionary["description"] as? String!
    
    let iconName = playListDictionary["icon"] as? String!
    icon = UIImage(named: iconName!)
    
    let largeIconName = playListDictionary["largeIcon"] as? String!
    largeIcon = UIImage(named: largeIconName!)
   
    artists += playListDictionary["artists"] as! [String]
  }
  
  func rgbColorFromDictionart(colorDictionary: [String: CGFloat]) -> UIColor {
    let red = colorDictionary["red"]!
    let green = colorDictionary["green"]!
    let blue = colorDictionary["blue"]!
    let alpha = colorDictionary["alpha"]!

    return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha/255.0)
  }
  
}