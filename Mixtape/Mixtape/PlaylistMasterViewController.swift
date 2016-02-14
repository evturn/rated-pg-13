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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    aButton.setTitle("Press down firmly.", forState: .Normal)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func buttonPressed() {
    view.backgroundColor = UIColor.orangeColor()
  }

}

