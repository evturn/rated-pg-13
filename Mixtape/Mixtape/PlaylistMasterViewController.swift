//
//  ViewController.swift
//  Mixtape
//
//  Created by Evan Turner on 2/14/16.
//  Copyright © 2016 Evan Turner. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

  var playlistsArray: [UIImageView] = []
  @IBOutlet weak var playlistImageView0: UIImageView!
  @IBOutlet weak var playlistImageView1: UIImageView!
  @IBOutlet weak var playlistImageView2: UIImageView!
  @IBOutlet weak var playlistImageView3: UIImageView!
  @IBOutlet weak var playlistImageView4: UIImageView!
  @IBOutlet weak var playlistImageView5: UIImageView!

  override func viewDidLoad() {
    super.viewDidLoad()
    playlistsArray.append(playlistImageView0)
    
    for index in 0..<playlistsArray.count {
      let playlist = Playlist(index: index)
      let playlistImageView = playlistsArray[index]
      
      playlistImageView.image = playlist.icon
      playlistImageView.backgroundColor = playlist.backgroundColor
    }
    
    playlistsArray.append(playlistImageView0)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func buttonPressed() {
    view.backgroundColor = UIColor.orangeColor()
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "showPlaylistDetailSegue" {
      
      let playlistImageView = sender!.view as! UIImageView
      if let index = playlistsArray.indexOf(playlistImageView) {
        let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
        playlistDetailController.playlist = Playlist(index: index)
      }
      

    }
  }

  @IBAction func showPlaylistDetail(sender: AnyObject) {
    performSegueWithIdentifier("showPlaylistDetailSegue", sender: sender)
  }
}

