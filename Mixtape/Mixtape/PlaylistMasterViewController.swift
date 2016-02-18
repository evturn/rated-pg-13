//
//  ViewController.swift
//  Mixtape
//
//  Created by Evan Turner on 2/14/16.
//  Copyright © 2016 Evan Turner. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

  @IBOutlet weak var aButton: UIButton!
  @IBOutlet weak var playlistImageView0: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    aButton.setTitle("Press down firmly.", forState: .Normal)
    
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
    if segue.identifier == "showPlaylistDetail" {
      let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
      
      playlistDetailController.segueLabelText = "I've been pressed"
    }
  }

}

