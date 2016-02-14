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
  
  let factBook = FactBook()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    funFactLabel.text = factBook.randomFact()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    
  }

  @IBAction func showFunFact() {
    funFactLabel.text = factBook.randomFact()
  }

}

