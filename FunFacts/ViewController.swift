//
//  ViewController.swift
//  FunFacts
//
//  Created by Evan Turner on 2/13/16.
//  Copyright © 2016 Evan Turner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var funFactLabel: UILabel!
  @IBOutlet weak var funFactButton: UIButton!
  
  let factBook = FactBook()
  let colorWheel = ColorWheel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    funFactLabel.text = factBook.randomFact()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    
  }

  @IBAction func showFunFact() {
    var randomColor = colorWheel.randomColor()
    view.backgroundColor = randomColor
    funFactButton.tintColor = randomColor
    funFactLabel.text = factBook.randomFact()
  }

}

