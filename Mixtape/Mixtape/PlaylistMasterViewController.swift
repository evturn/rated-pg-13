//
//  ViewController.swift
//  Mixtape
//
//  Created by Evan Turner on 2/14/16.
//  Copyright © 2016 Evan Turner. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

  @IBOutlet weak var playlistImageView0: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let playlist = Playlist(index: 0)
    playlistImageView0.image = playlist.icon
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
      let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
      
      playlistDetailController.playlist = Playlist(index: 0)
    }
  }

  @IBAction func showPlaylistDetail(sender: AnyObject) {
    performSegueWithIdentifier("showPlaylistDetailSegue", sender: sender)
  }
}

