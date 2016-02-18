//
//  PlaylistDetailViewController.swift
//  Mixtape
//
//  Created by Evan Turner on 2/14/16.
//  Copyright © 2016 Evan Turner. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {

  var playlist: Playlist?
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if playlist != nil {
      buttonPressLabel.text = playlist!.title
    }
  }

  override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
