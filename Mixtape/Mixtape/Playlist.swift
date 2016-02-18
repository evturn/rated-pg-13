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
}